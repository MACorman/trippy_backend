# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Schedule.destroy_all
Destination.destroy_all
UserSchedule.destroy_all
DestinationSchedule.destroy_all



u1 = User.create(username: "Miles", password: "123", image: "https://hookagency.com/wp-content/uploads/2017/07/shitty-stock-photos.jpg")
u2 = User.create(username: "Kelly", password: "123", image: "https://www.kut.org/sites/kut/files/styles/medium/public/201308/AISD_New_Hires_Packet-001_0.jpg")

s1 = Schedule.create(name: "Capital Tour", location: "Wasington DC")
s2 = Schedule.create(name: "Pairs Vacation", location: "Paris")

d1 = Destination.create(name: "Lincoln Memorial", address: "2 Lincoln Memorial Cir NW, Washington, DC 20037", category: "Tourist Attraction")
d2 = Destination.create(name: "The Dabney", address: "122 Blagden Alley NW, Washington, DC 20001", category: "restaurant")
d3 = Destination.create(name: "Eiffel Tower", address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris", category: "Tourist Attraction")

UserSchedule.create(user_id: u1.id, schedule_id: s1.id)
UserSchedule.create(user_id: u2.id, schedule_id: s2.id)


DestinationSchedule.create(destination_id: d1.id, schedule_id: s1.id)
DestinationSchedule.create(destination_id: d2.id, schedule_id: s1.id)
DestinationSchedule.create(destination_id: d3.id, schedule_id: s2.id)
