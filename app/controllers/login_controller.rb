class LoginController < ApplicationController

  # POST /login
  def create
    user = User.find_by("lower(username) = ?", params[:username].downcase)
    if user && user.authenticate(params[:password])
      time = Time.new
      if user.last_day != time.day
        user.bank += 100
        user.last_day = time.day
        user.save
      end
      render json: authentication_json(user.id)
    else
      render json: { errors: [ "No" ] }, status: :unprocessable_entity
    end 
  end
  
end