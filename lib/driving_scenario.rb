# frozen_string_literal: true

require_relative 'car'

def display(car)
  return "---> The engine is #{car.engine_on? ? 'on' : 'off'}" \
    "- Gas left is the tank: #{car.current_gas} of #{car.max_gas}"
  "- Miles driven: #{car.miles}"
end

# We instatiate a new car with 60 liters of gas
car = Car.new(60)
puts 'You got a new car!'
puts display(car)

# We want to drive home
puts 'Lets drive back home! (10 miles)'
car.turn_engine_on
car.drive(10)
puts display(car)

# Once home, we should turn the engine off
puts "Time to rest, let's turn the engine off"
car.turn_engine_off
puts display(car)
