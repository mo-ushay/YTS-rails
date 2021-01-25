# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding your user accounts!!'
load "#{Rails.root}/db/seeds/users.rb"

puts 'Seeding your actors!!'
load "#{Rails.root}/db/seeds/actors.rb"

puts 'Seeding your movies!!'
load "#{Rails.root}/db/seeds/movies.rb"

puts 'Seeding your movie roles!!'
load "#{Rails.root}/db/seeds/movie_roles.rb"

puts 'Seeding your ratings!!'
load "#{Rails.root}/db/seeds/ratings.rb"

puts 'Seeding your comment info!!'
load "#{Rails.root}/db/seeds/comments.rb"

puts 'Seeding your reviews!!'
load "#{Rails.root}/db/seeds/reviews.rb"

puts 'Seeding your Likes!!'
load "#{Rails.root}/db/seeds/likes.rb"

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?