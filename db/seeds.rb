# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(username: "Miles", password: "123", image: "https://hookagency.com/wp-content/uploads/2017/07/shitty-stock-photos.jpg")

s1 = Schedule.create(name: "Capital Tour", location: "Wasington DC")

d1 = Destination.create(name: "Lincoln Memorial", address: "2 Lincoln Memorial Cir NW, Washington, DC 20037", category: "attraction")
d2 = Destination.create(name: "The Dabney", address: "122 Blagden Alley NW, Washington, DC 20001", category: "restaurant")

UserSchedule.create(user_id: u1.id, schedule_id: s1.id)

DestinationSchedule.create(destination_id: d1.id, schedule_id: s1.id)
DestinationSchedule.create(destination_id: d2.id, schedule_id: s1.id)