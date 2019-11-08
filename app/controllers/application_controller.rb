class ApplicationController < ActionController::Base
  # Uncomment the code below if you want to authorize users
  # include Pundit
  # Uncomment the code below if you want to authenticate users
  # before_action :authenticate

  private

  def authenticate
    ## Needs some refactoring
    return unauthorized if request.headers['Authorization'].nil?

    token = request.headers['Authorization'].split(' ').last

    user_id = Auth::JsonWebToken.decode(token)['user']
    @current_user = User.find_by(id: user_id)
  end

  def unauthorized
    head :unauthorized
  end
end