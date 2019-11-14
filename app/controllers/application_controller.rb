class ApplicationController < ActionController::Base
  # Uncomment the code below if you want to authorize users
  # include Pundit
  # Uncomment the code below if you want to authenticate users
  # before_action :authenticate

  private

  # JWT Token authentication
  def authenticate
    ########### Needs some refactoring #########################
    return unauthorized if request.headers['Authorization'].nil?
    # Get the bearer Bearer from the headers
    token = request.headers['Authorization'].split(' ').last

    # Decode the token and get user_id
    user_id = Auth::JsonWebToken.decode(token)['user']
    @current_user = User.find_by(id: user_id)
  end

  def unauthorized
    head :unauthorized
  end
end