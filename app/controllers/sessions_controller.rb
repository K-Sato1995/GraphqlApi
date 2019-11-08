class SessionsController < ApplicationController
  skip_before_action :authenticate
  # Generate jwt tokens for signed in users
  def create
    user = User.find_by(email: auth_params[:email])
    if user.authenticate(auth_params[:password])
      jwt = Auth::JsonWebToken.encode({ user: user.id })
      render json: { jwt: jwt }
    else
      render json: { error: "no such user"}
    end
  end

  private

  def auth_params
    params.require(:auth).permit(:email, :password)
  end
end