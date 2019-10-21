require 'auth'

class ApplicationController < ActionController::Base
  include Firebase
  include Pundit
  before_action :authenticate
  attr_reader :current_user

  private

  def authenticate
    authenticate_with_http_token do |token, options|
      begin
        decoded_token = Firebase::Auth.verify_id_token(token)
        user_id = decoded_token['uid']
        @current_user = User.find_or_create_by(id: user_id)
      rescue => e
        logger.error(e.message)
        false
      end
    end
  end
end
