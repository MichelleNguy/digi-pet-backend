class LoginController < ApplicationController

  def create
    user = User.find_by("lower(username) = ?", params[:username].downcase)
    if user && user.authenticate(params[:password])
      render json: authentication_json(user.id)
    else
      render json: { errors: [ "No" ] }, status: :unprocessable_entity
    end 
  end
  
end