class ATV
	attr_accessor(:sound, :wheels)

	def initialize(sound)
		@wheels = 4
		@sound = sound
	end
end

atv = ATV.new("Vrrm vrrm")
atv2 = ATV.new("wowowowow")

class SemiTruck 
	attr_accessor(:sound, :wheels)
	def initialize(sound)
		@wheels = 18
		@sound = sound
	end
end

semi = SemiTruck.new("Buurrrrrm")
semi2 = SemiTruck.new("Raawwrrr")

class MotorCycle
	attr_accessor(:sound, :wheels)
	def initialize(sound)
		@wheels = 2
		@sound = sound
	end
end

moto = MotorCycle.new("Weeee")
moto2 = MotorCycle.new("Waahhh")





vehicle_array = [ atv, atv2, semi, semi2, moto, moto2 ]

class WheelCounter
	def initialize(vehicles)
	@vehicles = vehicles	
	end
	def count
		@vehicles.each do | counts |
			puts counts.wheels
		end
	end
end
		#return the number of wheels in @vehicles

class SoundPrinter
	def initialize(vehicles)
		@vehicles = vehicles
	end

	def print
		@vehicles.each do | tire |
			puts tire.sound
		end

		#print all the sounds in @vehicles
	end
end

counter = WheelCounter.new(vehicle_array)
counter.count

printer = SoundPrinter.new(vehicle_array)
printer.print