class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :update, :destroy]

  # GET /pets
  def index
    if logged_in?
      @pets = Pet.all
      render json: @pets
    else
      render json: {go_away: true}, status: :unauthorized
    end
  end

  #GET /pets/1
  def show
    render json: @pet
  end

  # POST /pets
  def create
    @pet = Pet.new(pet_params)

    if logged_in?
      if @pet.save
        render json: @pet, status: :created, location: @pet
      else
        render json: @pet.errors, status: :unprocessable_entity
      end
    else
      render json: {go_away: true}, status: :unauthorized
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy
  end

  private
    def set_pet
      @pet = Pet.find(params[:id])
    end

    def pet_params
      params.require(:pet).permit(:name, :hygiene, :hunger, :attention, :user_id, :img_url)
    end
end
