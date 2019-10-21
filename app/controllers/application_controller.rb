class ApplicationController < ActionController::API
  include Auth
  include Pundit
  before_action :authenticate
  attr_reader :current_user

  private

  def authenticate
    token = request.headers['authorization']
    return unauthorized unless Auth.verify_id_token(token.remove('Bearer '))
    @current_user = User.fourth
  end

  def unauthorized
    head :unauthorized
  end
end
