class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users/1
  def show
    user_id = params[:id]
    if logged_in_user_id == user_id.to_i
      @user = User.find(params[:id])
      render json: @user
    else
      render json: {go_away: true}, status: :unprocessable_entity
    end
  end

  # POST /users
  def create
    @user = User.create(user_params)

    if @user.valid?
      @user.daily_bonus
      render json: authentication_json(@user.id)
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # This is called before every method in before_action to set the user
    def set_user
      @user = User.find(params[:id])
    end

    # these are the permitted params when creating new users
    def user_params
      params.require(:user).permit(:username, :password)
    end
end