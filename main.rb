#!/usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)

bike.add_cargo(:apples)
bike.add_cargo(:water)
bike.add_cargo(:repair_kit)

puts "Space for #{bike.pannier_remaining_capacity} items left."

bike.rent!
puts "Bike rented? #{bike.rented}"

# Attempting to overfill the pannier
10.times { |i| bike.add_cargo("item#{i}") }

puts "Space for #{bike.pannier_remaining_capacity} items left."
