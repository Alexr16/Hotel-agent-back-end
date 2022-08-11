class V1::HotelsController < ApplicationController

  def index
    render json: Hotel.all
  end

  def show
    render json: Hotel.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    hotel = Hotel.new(hotel_params)
    hotel.user_id = @user.id
    if hotel.save
      render json: hotel
    else
      render json: hotel.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @hotel = Hotel.find(params[:id])
    if @hotel.destroy!
      render json: { status: 201, message: 'Hotel removed successfully!', content: { hotel: @hotel } }
    else
      render json: { status: 401, message: 'Failed to remove!' }
    end
  end

  private

  def hotel_params
    params.permit(
      :name,
      :description,
      :cost,
      :address,
      :image
    )
  end
end
