class V1::ReservationsController < ApplicationController
    def index
        render json: Reservation.all
    end

    def show
        render json: Reservation.find(params[:id])
    end

    def create
        @user = User.find(params[:user_id])
        reservation = Reservation.new(reservation_params)
        reservation.user_id = @user.id
        reservation.hotel_id = reservation_params[:hotel_id]
        if reservation.save
            render json: { status: 201, message: 'Reservation created successfully!', content: { reservation: reservation } }
        else
            render json: reservation.errors, status: :unprocessable_entity, message: 'Operation failed'
        end
    end

    def delete
        reservation = Reservation.find(params[:id])
        reservation.destroy
        render json: reservation
    end

    private
    
    def reservation_params
        params.permit(
        :city,
        :date,
        :number_of_days,
        :number_of_rooms,
        :number_of_guests,
        :hotel_id,
        )
    end


end