class UserItemsController < ApplicationController
  before_action :set_user_item, only: [:destroy]

  # POST /user_items
  def create
    @user_item = UserItem.new(user_item_params)
    @user = User.find(params[:user_id])
    @item = Item.find(params[:item_id])
    
    if @user.bank <= @item.price
      render json: {poor: true}, status: :unprocessable_entity
    elsif @user_item.save
      @user.bank -= @item.price
      @user.save
      render json: @user_item, status: :created, location: @user_item
    else
      render json: @user_item.errors, status: :unprocessable_entity
    end

  end

  # DELETE /user_items/1
  def destroy
    @user_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_item
      @user_item = UserItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_item_params
      params.require(:user_item).permit(:user_id, :item_id)
    end
end
