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

    private

    def hotel_params
       params.permit(
      :name,
      :description,
      :cost,
      :address,
      :image,
    )
    end


end
  