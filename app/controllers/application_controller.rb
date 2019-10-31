class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate

  private

  def authenticate
    ## Refactoring
    return unauthorized if request.headers['Authorization'].nil?

    token = request.headers['Authorization'].split(' ').last

    user_id = Auth::JsonWebToken.decode(token)['user']
    @current_user = User.find_by(id: user_id)
  end

  def unauthorized
    head :unauthorized
  end
end