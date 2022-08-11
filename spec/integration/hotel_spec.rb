require 'swagger_helper'
require 'rails_helper'

describe 'Hotel Agent API Docs', type: :request do
  before do
    @user = User.create(name: 'admin', email: 'admin@gmail.com', password: 'password')
    @hotel = Hotel.create(name: 'hotel', description: 'some description',
    cost: 100.0, address: 'some address', image:['some image'],user_id: @user.id)
    @reservation = Reservation.create(city: 'some city', date:Date.new,
    number_of_days:1, number_of_guests: 1, number_of_rooms:1, 
    user_id:@user.id, hotel_id: @hotel.id)
  end

  after do
    Rails.application.reload_routes!
  end

  path '/auth/login' do
    post 'Login' do
      tags 'Authentication'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        }
      }
      response '201', 'User login successfully!' do
        let(:user) { { email: @user.email, password: @user.password } }
        run_test!
      end
    end
  end
    path '/auth/logout' do
        delete 'Logout' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          response '200', 'User logout successfully!' do
            run_test!
          end
        end
    end
    path '/v1/most_recent' do
        get 'Most Recent Hotels' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :hotel, in: :body
          response '200', 'Success' do
            let(:hotel) {Hotel.order(created_at: :desc).limit(10)}
            run_test!
          end
        end
    end
    path '/v1/users' do
        post 'Create User' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :user, in: :body, schema: {
            type: :object,
            properties: {
              name: { type: :string},
              email: { type: :string },
              password: { type: :string }
            }
          }
          response '201', 'User created successfully!' do
            let(:user) { {name: @user.name, email: @user.email, password: @user.password } }
            run_test!
          end
        end
    end
    path '/v1/users/{id}/hotels' do
        get 'List of Hotels' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :hotel, in: :body
          response '201', 'Success!' do
            let(:hotel) { Hotel.all }
            run_test!
          end
        end
    end
    path '/v1/users/{id}/hotels/{id}' do
        get 'View a Hotel' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :hotel, in: :body
          response '201', 'Success!' do
            let(:hotel) { Hotel.find(params[:id]) }
            run_test!
          end
        end
    end
    path '/v1/users/{id}/hotels' do
        post 'Create a Hotel' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :hotel, in: :body, schema: {
            type: :object,
            properties: {
              name: { type: :string},
              description: { type: :string },
              cost: { type: :float },
              address: {type: :string},
              image: {type: :string}
            }
          }
          response '201', 'Hotel created Successfully!' do
            let(:hotel) { {name: @hotel.name, description:@hotel.description,
                cost:@hotel.cost, address:@hotel.address, image: @hotel.image,
                user_id: @user.id} }
            run_test!
          end
        end
    end
    path '/v1/users/{id}/hotels/{id}' do
        delete 'Remove a Hotel' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :hotel, in: :body
          response '201', 'Hotel removed Successfully!' do
            let(:hotel) { Hotel.find(params[:id]) }
            run_test!
          end
        end
    end

    #some come
    path '/v1/users/{id}/reservations' do
        get 'List of Reservations for a user' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :reservation, in: :body
          response '201', 'Success!' do
            let(:reservation) { Reservation.all }
            run_test!
          end
        end
    end
    path '/v1/users/{id}/reservations' do
        post 'Create a Reservations' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :reservation, in: :body, schema: {
            type: :object,
            properties: {
              city: { type: :string},
              date: { type: :date },
              number_of_days: { type: :integer },
              number_of_guests: {type: :integer},
              number_of_rooms: {type: :integer},
              hotel_id: {type: :integer}
            }
          }
          response '201', 'Reservation added Successfully!' do
            let(:hotel) { {city: @reservation.city, date: @reservation.date,
                number_of_days:@reservation.number_of_days, number_of_guests:@reservation.number_of_guests,
                number_of_rooms: @reservation.number_of_rooms, hotel_id: @hotel.id, user_id:@user.id} }
            run_test!
          end
        end
    end
    path '/v1/users/{id}/reservations/{id}' do
        delete 'Remove a Reservation' do
          tags 'Authentication'
          consumes 'application/json'
          produces 'application/json'
          parameter name: :hotel, in: :body
          response '201', 'Hotel removed Successfully!' do
            let(:reservation) { reservation = Reservation.find(params[:id]) }
            run_test!
          end
        end
    end
end
