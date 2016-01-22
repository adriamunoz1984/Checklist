# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
 
 users = User.all
 # Create items
 10.times do
   Item.create!(
     user_id:   1,
     title:  Faker::Lorem.sentence,
     description:   Faker::Lorem.paragraph
   )
 end
 items = Item.all
 
 puts "Seed finished"
 puts "#{Item.count} Items created"