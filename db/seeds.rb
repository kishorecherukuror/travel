# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TravelVendor.delete_all
@u = User.last
@u2 = User.first
100.times do |i|
	@u.travel_vendors.create(:name => Faker::Name.name ,ph_no: Faker::PhoneNumber.phone_number,
	email: Faker::Internet.email,url: Faker::Internet.url )	
	@u2.travel_vendors.create(:name => Faker::Name.name ,ph_no: Faker::PhoneNumber.phone_number,
	email: Faker::Internet.email,url: Faker::Internet.url )	
end

