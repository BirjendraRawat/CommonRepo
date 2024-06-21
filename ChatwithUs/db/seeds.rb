# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
 User.create(username: "Puja", password: "Password123")
 User.create(username: "Anushka", password: "Password123")
 User.create(username: "Shikha", password: "Password123")
 User.create(username: "Sneha", password: "Password123")
 User.create(username: "Meenakshi", password: "Password123")
 User.create(username: "Kritika", password: "Password123")

 Message.create(body: "Hello everyone!!!", user_id: 1)
 Message.create(body: "Hello Puja, how are you?!!!", user_id: 4)
 Message.create(body: "I'm fine... sneha", user_id: 1)
 Message.create(body: "Today's weather is so awesome. Let's go somewhere..", user_id: 3)
 Message.create(body: "Hello Guys..!!", user_id: 6)
 Message.create(body: "Feeling good!!", user_id: 5)