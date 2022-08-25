# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# @counter = 1

# 5.times do 
#     User.create(name: "user  #{@counter}") 
#     Hotel.create(name: "hotel #{@counter}", 
#         description:"description #{@counter}",
#         cost: @counter , address: "address #{@counter}",
#         image: ["image #{@counter}","image #{@counter+1}"],
#     user_id:User.first)
#     Reservation.create(city: "city #{@counter}", 
#         date: Date.new,
#         number_of_days: @counter , number_of_rooms: @counter,
#         number_of_guests:@counter, user_id:User.first,
#     hotel_id: Hotel.first)
#     @counter += 1
# end
#Users
user1 = User.create(name: "Admin", email: "admin@hotmail.com", password: "123456")
user2 = User.create(name: "User", email: "user@hotmail.com", password: "123456")

hotel1 = Hotel.create(name: "InterContinental Miami", description: "This property is 20 minutes walk from the beach. With views of the Biscayne Bay, InterContinental Miami is set in Miami’s business district. The Port of Miami is 6 minutes’ drive from this luxury hotel.", cost: 537.0, address: "100 Chopin Plaza, Miami, FL 33131, United States", image: ["https://live.staticflickr.com/4121/4914307355_d021b01f7d_k.jpg","https://live.staticflickr.com/3469/3301731794_05f228003a_c.jpg","https://live.staticflickr.com/3369/3297954996_aa13e171c5_c.jpg"], user_id: user1.id)
hotel2 = Hotel.create(name: "Days Inn by Wyndham Miami", description: "This Days Inn features free WiFi, a flat-screen cable TV and small refrigerator are provided in all rooms of the Days Inn Miami International Airport. A coffee maker, work desk and ironing facilities are included.", cost: 236.0, address: "7250 North West 11th Street, Miami, FL 33126, United States", image: ["https://live.staticflickr.com/3151/3045575191_5472bd411b_c.jpg","https://live.staticflickr.com/8125/8670461538_becd425644_c.jpg", "https://live.staticflickr.com/2037/2059887094_050a1e41ee_c.jpg"], user_id: user1.id)
hotel3 = Hotel.create(name: "Paradisus Palma Rea", description: "This property is 13 minutes walk from the beach. Located in Punta Cana, this impressive resort has direct access to a private beach area. There is a large outdoor pool with waterslides, as well as an extensive spa, available for an extra cost.", cost: 929.0, address: "Playa de Bavaro, Bavaro, 23301 Punta Cana, Dominican Republic", image: ["https://live.staticflickr.com/2357/2517124188_5b5cd1d57f_c.jpg","https://live.staticflickr.com/3853/14932975166_b7fb1bdb0b_c.jpg", "https://live.staticflickr.com/84/212083881_51d761c171_c.jpg"], user_id: user1.id)

hotel4 = Hotel.create(name: "Caribbean Dream STUDIOS", description: "This property is 1 minute walk from the beach. Offering pool views, Caribbean Dream STUDIOS Playa LOS CORALES - Pool Beach Club & SPA in Punta Cana offers accommodation, a restaurant, an outdoor swimming pool.", cost: 171.0, address: "Villas Los Corales, Calle Residencial Los Corales, Punta Cana 23000, Bavaro, 23000 Punta Cana, Dominican Republic", image: ["https://live.staticflickr.com/5297/5462467531_7922878cd5_c.jpg","https://live.staticflickr.com/4081/4818816278_98711d8c93_c.jpg", "https://live.staticflickr.com/2188/1670443658_81cb16162a_c.jpg"], user_id: user1.id)
hotel5 = Hotel.create(name: "Native Manchester", description: "Native Manchester is great for groups who want to book apartments that connect via a private outer hallway or interconnecting apartments that are adjoined by a two-way door in the living room.", cost: 457.0, address: "51 Ducie Street, Piccadilly, Manchester, M1 2TP, United Kingdom", image: ["https://live.staticflickr.com/8300/29277962226_259e93f352_c.jpg","https://live.staticflickr.com/65535/51561982712_730d2786a8_c.jpg", "https://live.staticflickr.com/65535/49832401063_4ab23cec2b_c.jpg"], user_id: user1.id)
hotel6 = Hotel.create(name: "Llandudno Bay Hotel", description: "This property is 1 minute walk from the beach. Overlooking the picturesque promenade, the Llandudno Bay Hotel provides views to overlook, and modern interior to enjoy.", cost: 436.0, address: "East Parade, Llandudno, LL30 1BE, United Kingdom", image: ["https://live.staticflickr.com/1819/30249901348_245340d3d9_c.jpg","https://live.staticflickr.com/65535/50910339786_f9c87df750_c.jpg", "https://live.staticflickr.com/65535/51595781097_179a4394ca_c.jpg"], user_id: user1.id)

hotel7 = Hotel.create(name: "Jodha Bai Retreat", description: "Situated in Terranora, 10 km from Fingal Head Lighthouse, Jodha Bai Retreat features accommodation with a bar, free private parking, a garden and barbecue facilities.", cost: 355.0, address: "38 Sunnycrest Drive, NSW 2486 Terranora, Australia", image: ["https://live.staticflickr.com/247/447258151_5d4835a3fa_c.jpg","https://live.staticflickr.com/65535/51353776051_94f7f50dc4_z.jpg", "https://live.staticflickr.com/4032/4454771105_2e20fd196c_z.jpg"], user_id: user1.id)
hotel8 = Hotel.create(name: "Lancemore Crossley St. Melbourne", description: "Situated in Melbourne and with Princess Theatre reachable within 300 metres, Lancemore Crossley St. Melbourne features express check-in and check-out, non-smoking rooms, a fitness centre.", cost: 198.0, address: "51 Little Bourke Street, 3000 Melbourne, Australia", image: ["https://live.staticflickr.com/41/76197801_73096f656b_z.jpg","https://live.staticflickr.com/8812/29400135584_dbf3defc17_z.jpg", "https://live.staticflickr.com/2798/4482953643_5a7f1cceba_z.jpg"], user_id: user1.id)
hotel9 = Hotel.create(name: "Sofitel Barú Calablanca", description: "Set in Cartagena de Indias, Sofitel Barú Calablanca offers beachfront accommodation 2.5 km from Playa Blanca and offers various facilities, such as a restaurant, a bar and a garden.", cost: 290.0, address: " KM 7 Sector Portonao Departamento Bolivar Baru, 130017 Cartagena de Indias, Colombia", image: ["https://live.staticflickr.com/132/374984529_be423a70ae_z.jpg","https://live.staticflickr.com/187/374984735_1ae88a62c9_z.jpg", "https://live.staticflickr.com/4200/34120608553_e01c768869_z.jpg"], user_id: user1.id)

hotel10 = Hotel.create(name: "Melia Cartagena Karmairi", description: "This property is 12 minutes walk from the beach. Situated in Cartagena de Indias, 200 m from Manzanillo Beach, Melia Cartagena Karmairi features accommodation with a restaurant, free private parking.", cost: 117.0, address: "Km 3 Vía Manzanillo del Mar Km 3 Vía Manzanillo del Mar, Manzanillo, 130001 Cartagena de Indias, Colombia", image: ["https://live.staticflickr.com/896/41168192471_b1a0d856cf_z.jpg","https://live.staticflickr.com/147/374975724_3993f00342_z.jpg", "https://live.staticflickr.com/173/374994554_740dd7991b_z.jpg"], user_id: user1.id)
hotel11 = Hotel.create(name: "Carlton City Hotel Singapore", description: "Situated in the historical district of Tanjong Pagar, Carlton City Hotel Singapore is a short drive from colourful Chinatown and Raffles Place. The hotel boasts an outdoor swimming pool and a sundeck.", cost: 211.0, address: "1 Gopeng Street, Chinatown, 078862 Singapore, Singapore", image: ["https://live.staticflickr.com/7880/47534802271_5827731624_z.jpg","https://live.staticflickr.com/4650/25121215267_cafa74d03b_z.jpg", "https://live.staticflickr.com/1630/25725601291_88972c0319_z.jpg"], user_id: user1.id)

#Reservations
# reservation1 = Reservation.create(city: "city 1", date: Date.new, number_of_days: 1, number_of_rooms: 1, number_of_guests: 1, user_id: user2.id, hotel_id: hotel1.id)