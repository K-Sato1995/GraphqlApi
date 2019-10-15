class ApplicationController < ActionController::API
  include Auth
  # before_action :authenticate

  private

  def authenticate
    token = request.headers['authorization']
    return unauthorized if token.nil?

    Auth.verify_id_token(token.remove('Bearer '))
  end

  def unauthorized
    render :status => :unauthorized
  end
end
