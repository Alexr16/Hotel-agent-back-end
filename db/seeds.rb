# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@counter = 1

5.times do 
    User.create(name: "user  #{@counter}") 
    Hotel.create(name: "hotel #{@counter}", 
        description:"description #{@counter}",
        cost: @counter , address: "address #{@counter}",
        image: ["image #{@counter}","image #{@counter+1}"],
    user_id:User.first)
    Reservation.create(city: "city #{@counter}", 
        date: Date.new,
        number_of_days: @counter , number_of_rooms: @counter,
        number_of_guests:@counter, user_id:User.first,
    hotel_id: Hotel.first)
    @counter += 1
end