# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "pamphilemkp@gmail.com", password: "Rdc145Success!", first_name: "Pamphile", last_name: "MKP")
# seeds.rb

# Create a new Devise user with the email and password
DeviseUser.create(email: "allahabadshah148@gmail.com", password: "basit*786a")

# Note: Replace "DeviseUser" with the actual name of your Devise user model.
