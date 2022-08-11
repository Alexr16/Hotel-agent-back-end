require 'rails_helper'

RSpec.describe Reservation, type: :model do
    subject do
        @user = User.create(name: 'Test User', email: 'tuser@example.com', password: 'password')
        @hotel = Hotel.create(name: 'Hotel name', description: 'tuser@example.com',
                              cost: 3.2, address: 'this is address field',
                              image: ['image1.png', 'image2.png', 'image3.png'], user_id: @user.id)
        @reservation = Reservation.create(city:'city name',date:'Mon, 01 Jan -4712',number_of_days:2,number_of_rooms:2,
            number_of_guests:3,user_id:@user.id,hotel_id:@hotel.id)
      end

      before { subject.save }

      it 'try to test user creation validations' do
        expect(subject).to be_valid
      end
      it 'reservation is not valid without a city name' do
        @reservation.city = nil
        expect(subject).to_not be_valid
      end
    
      it 'is not valid with a city name that is less than 3' do
        @reservation.city = 'He'
        expect(subject).to_not be_valid
      end
    
      it 'is not valid without an date, number_of_days, number_of_rooms, number_of_guests' do
        @reservation.date = nil
        @reservation.number_of_days =nil
        @reservation.number_of_rooms = nil
        @reservation.number_of_guests = nil
        expect(subject).to_not be_valid
      end

      it 'number_of_days, number_of_rooms, number_of_guests must be integer' do
        @reservation.number_of_days ='nil'
        @reservation.number_of_rooms = 2.5
        @reservation.number_of_guests = 'nil'
        expect(subject).to_not be_valid
      end
      it 'number_of_days, number_of_rooms, number_of_guests must be greater than 0' do
        @reservation.number_of_days = 0
        @reservation.number_of_rooms = 0
        @reservation.number_of_guests = 0
        expect(subject).to_not be_valid
      end

end
