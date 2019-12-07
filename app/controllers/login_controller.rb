class LoginController < ApplicationController

  # POST /login
  def create
    user = User.find_by("lower(username) = ?", params[:username].downcase)
    if user && user.authenticate(params[:password])
      user.daily_bonus
      render json: authentication_json(user.id)
    else
      render json: { errors: [ "No" ] }, status: :unprocessable_entity
    end 
  end
  
end