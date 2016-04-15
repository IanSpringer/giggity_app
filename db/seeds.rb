# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gig.destroy_all
User.destroy_all
Message.destroy_all

u1 = User.create({first_name: "John", last_name: "Smith", email: "john@smith.com", password: "1234", password_confirmation: "1234"})
u1.profile = Profile.create({
  dob: "12/12/85",
  bio: "Hi, I like Music",
  location: "Los Angeles",
  website: "ianspringer.com",
  musical_dreamteam: "John, Jimi, Miles, Zappa"
})
u2 = User.create({first_name: "Bono", last_name: "Smith", email: "bono@smith.com", password: "1234", password_confirmation: "1234"})
u2.profile = Profile.create({
  dob: "12/10/47",
  bio: "Hi, I'm Ian's dad",
  location: "Chicago",
  website: "scottspringer.com",
  musical_dreamteam: "Harry Chapin, Jimmy Buffet"
})
gigs = Gig.create({title: "Piano player need", body: "Need piano player", user_id: u1.id, time: "3:10"})
messages = Message.create({body: "Hey, are you still hiring a drummers?", receiver_id: u2.id, sender_id: u1.id})
