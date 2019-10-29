require 'auth'

class ApplicationController < ActionController::Base
  include Firebase
  include Pundit
  before_action :authenticate
  attr_reader :current_user

  private

  def authenticate
    token = request.headers["authorization"]
    p User.all.size
    p token
    begin
      decoded_token = Firebase::Auth.verify_id_token(token.remove("Bearer "))
      user_id = decoded_token['uid']
      @current_user = User.find_or_create_by(id: user_id)
    rescue => e
      logger.error(e.message)
      unauthorized
    end
  end

  def unauthorized
    head :unauthorized
  end
end
