# frozen_string_literal: true

require_relative 'car'

def display(car)
  return "---> The engine is #{car.engine_on? ? 'on' : 'off'}" \
    "- Gas left is the tank: #{car.current_gas} of #{car.max_gas}"
  "- Miles driven: #{car.miles}"
end

# We instatiate a new car with 60 liters of gas
car = Car.new(60)
car.turn_engine_on
# We have been driving for a while
car.drive(55)
puts display(car)
puts 'We been driving so long, gas is low!'
puts 'We stop at a gas station'

# Make sure we don't over fill the tank!
5.times do
  puts 'Filling your car! (10 liters)'
  car.refill(10)
  puts display(car)
end

# The tank should be full here
puts 'Ready to drive!'
4.times do
  puts 'Driving! (20miles)'
  drive(20)
  puts display(car)
end

# The tank should not have negative number for how much gas is left in the tank, gas should be 0
# The car should stop the engine by itself when gas is 0
# The car should display the right amount of miles: 135
puts display(car)
