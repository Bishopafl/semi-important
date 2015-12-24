class Room
  attr_accessor(:exit, :description)

  def initialize(exit,    description)
    @exit = exit
    @description = description
  end

  def exit?(direction)
    @exit == direction
  end
end

class Game
  def initialize
    @location = 0
    @rooms = []
  end

  def add_room(room)
    
  end

  def start(description)
    @description = my_game.start
  end

  # def move(direction)
    # if # moving towards exit
      # update location
      # display next room's message
      # call the finish method when exiting the final room
    # else
      # staying in the same place
    # end

  def finish
    # print some special message
  end
end

#============================================================================

my_room1 = Room.new("N", "You are in a dark room.")
my_room2 = Room.new("W", "You are in a bright room.")
my_room3 = Room.new("W", "You have arrived in heaven. It can only get worse from here..")



my_game = Game.new
my_game.add_room(my_room1)

my_game.start

my_game.move("N")


puts ""
puts my_room1.description
puts ""

print "Enter a direction> "
input = gets.chomp

# if my_room1.exit?(input)
#   puts "\n\n"
#   puts my_room2.description
#   puts ""

#   print "Enter a direction> "
#   input = gets.chomp

#   if my_room2.exit?(input)
#     puts ""
#     puts my_room3.description
#     puts ""

#     print "Enter a direction> "
#     input = gets.chomp

#     if my_room3.exit?(input)
#       puts "GOOD JOB YOU COMPLETED ALL 3 ROOMS"
#     else
#       puts "\nYOU ARE STUCK IN ROOM 3"
#     end
#   else
#     puts "YOU ARE STUCK IN ROOM 2"
#   end
# else
#   puts "YOU ARE STUCK IN ROOM 1"
# end

while my_room1.exit?(input) do
  puts my_room2.description
  end
end

puts ""
print "Enter a direction > "
input = gets.chomp

puts ""

if my_room2.exit?(input) do
  puts my_room3.description
  end
end

puts""
print "Enter a direction > "
input = gets.chomp

puts ""

if my_room3.exit?(input) do
  puts "Good job you completed all 3 rooms."
  end
end


# ==============================
#
# Room
# ====
#
# Information
# -----------
#
# Exit
# Description
# Object in room
# Hints
#
# ==============================
#
# Game
# ====
#
# Information
# -----------
#
# Location
# Rooms
#
# Behavior
# --------
#
# Add rooms
# Movement
# Starting game
#
# ===============================
#
# Getting input from the user
