class Room
	attr_accessor(:exit, :description)
	def initialize(exit, description)
		@exit = exit
		@description = description
	end

	def way_out(direction)
		@way_out = way_out
	end
end



class Game
	def initialize 
		@location = 0
		@room_array = []
	end

	def add_rooms(room)
		
	end

	def start 
		uno_room.description
	end
end


#-----------------------------------------------------------------

uno_room = Room.new("W", "You start in a dark room.")
dos_room = Room.new("S", "You are in a courtyard full of broken dreams.")
tres_room = Room.new("E", "You stand inside the foyer of a big house.")
quat_room = Room.new("S", "You find yourself in the kitchen, are you hungry?")



my_game = Game.new
# my_game.additional_rooms(uno_room)

my_game.add_rooms(uno_room)


puts uno_room.description
puts ""

print "Enter a direction > "
input = gets.chomp

if uno_room.exit?(input)
	puts ""
	puts dos_room.description
	puts ""
	# if dos_room.exit?(input)
	# 	puts ""
	# 	puts tres_room.description
	# 	puts ""
	# end
end

