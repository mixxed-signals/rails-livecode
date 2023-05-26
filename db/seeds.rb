# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

address = %w[berlin london nyc]
species = %w[dog, cat, pig]
20.times do
  Pet.create(name: Faker::Creature::Animal.name(), address: address.sample, species: species.sample, found_on: DateTime.now - (rand * 21))
end

puts "#{Pet.count}"

#using global variable SPECIES Pet::SPECIES.sample
#add gem faker in gemfiles and run bundle install
