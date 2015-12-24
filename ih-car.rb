class Car
	def initialize(color, horsepower, noise)
		@color = color
		@horsepower = horsepower
		@noise = noise
		@cities_visited = []
	end

	def looks
	puts "Nice car!  How did you get that #{@color} paint?"
	end

	def horsepower
	puts "That engine sounds like it's got over #{@horsepower} horses powering it!"
	end

	def noise
	puts "It's so loud that it goes #{@noise}"
	end

	def park(cities)
	@cities_visited.push(cities)
	end

	def cities_visited
	@cities_visited
	end
end

class RacingCar < Car
end

fast_car = RacingCar.new("Black", 10000000, "Ziiiipppp")
fast_car.looks
fast_car.horsepower
fast_car.noise
fast_car.park("Japan")
puts fast_car.cities_visited.inspect


cool_car = Car.new("Cotton Candy", 9000, "Brrooom")
dope_car = Car.new("Easter Pink", 10000, "Raawwwrrr")


puts "This is my new car:"
puts cool_car.inspect
puts cool_car.horsepower
puts cool_car.looks
puts cool_car.noise
cool_car.park("Miami")
cool_car.park("Orlando")
cool_car.park("St. Pete")

puts "My cool car has visited:"
puts cool_car.cities_visited.inspect
puts"\n\n"
puts "This is my second car:"
puts dope_car.inspect
puts dope_car.horsepower
puts dope_car.looks
puts dope_car.noise
dope_car.park("Tampa")
puts dope_car.cities_visited.inspect