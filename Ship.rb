class Spaceship
	def initialize(size, max_speed, weight)
		@size = size
		@max_speed = max_speed #max speed in "warps"
		@weight = weight #weight in "tons"
		@worlds_visited = []
	end

	#flight
	def fly
		puts "Taking off. You are airborne."
		puts "Flying at #{@max_speed} warps"
	end
	puts "\n\n"

	#land
	def land(world)
		puts "Landing now!"
		puts "Gets ready for all of my #{@weight} tons."
		
		#log that it visited that world
		@worlds_visited.push(world)
	end
		
	#array of worlds visited
	def worlds_visited
		@worlds_visited

	end

end

class RaceShip < Spaceship
end

racing_ship = RaceShip.new("small", 500, 25)
racing_ship.fly
racing_ship.land("Pluto")
puts racing_ship.worlds_visited.inspect

puts "\n\n"




enterprise = Spaceship.new("large", 100, 50)

puts "Created new spaceship:"
puts enterprise.inspect
enterprise.fly
enterprise.land("Mars")
puts enterprise.worlds_visited.inspect
puts "\n\n"
millenium_falcon = Spaceship.new("Small", 200, 20)
millenium_falcon.fly
millenium_falcon.land("Earth")
puts millenium_falcon.worlds_visited.inspect
puts "\n\n"
