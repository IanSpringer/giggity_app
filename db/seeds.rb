# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create({first_name: "John", last_name: "Smith", email: "john@smith.com", password_digest: "1234"})
gigs = Gig.create({title: "Piano player need", body: "Need piano player", user_id: 3, time: "3:10"})
messages = Message.create({body: "Hey, are you still hiring a drummers?", receiver_id: 2, sender_id: 1})
