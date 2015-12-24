module DiagonalMovement
    def is_diagonal?(x, y, new_x, new_y)
        if (new_x - x).abs == (new_y - y).abs
            # puts "#{new_x}, #{new_y}"
            true
        else
            false
        end
    end
end

module HorizontalMovement
    def is_horizontal?(x, y, new_x, new_y)
        if new_x == @x && new_y == @y
            true
        elsif new_y != @y && new_x != @x
            false
        end
    end
end


class Piece
    def initialize(x, y, color)
        @x = x
        @y = y
        @color
    end
end

Piece.new(8,8, "white")


class Rook < Piece
    include HorizontalMovement
    def move(new_x, new_y)
        if is_horizontal?(@x, @y, new_x, new_y)
            puts "#{new_x}, #{new_y}"
        else
        puts "Not horizontal, incorrect move."
        end        
    end

end

class Bishop < Piece
    include DiagonalMovement
    def move(new_x, new_y)
        if is_diagonal?(@x, @y, new_x, new_y)
            puts "#{new_x}, #{new_y}"
        else
            puts "Not diagonal, incorrect move"
        end
    end
end

class Knight < Piece
    def move(new_x, new_y)
        if (@x - new_x).abs == 2 && (@y - new_y).abs == 1
            puts "#{new_x}, #{new_y}"
        elsif (@x - new_x).abs == 1 && (@y - new_y).abs == 2
            puts "#{new_x}, #{new_y}"
        else
            puts "incorrect move"
        end 

    end
end

class Queen < Piece
    include DiagonalMovement
    include HorizontalMovement
    def move(new_x, new_y)
        if is_horizontal?(@x, @y, new_y, new_x)
            puts "#{new_x}, #{new_y}"
        elsif is_diagonal?(@x, @y, new_y, new_x)
            puts "#{new_x}, #{new_y}" 
        else
            puts "incorrect move for the Queen."
        end
    end
end

class King < Piece
    include DiagonalMovement
    include HorizontalMovement
    def move(new_x, new_y)
        if (is_horizontal?(@x, @y, new_y, new_x) -1).abs
            puts "#{new_x}, #{new_y}"
        elsif (is_diagonal?(@x, @y, new_y, new_x) - 1).abs
            puts "#{new_x}, #{new_y}"
        else
            puts "incorrect move for the King"
        end
    end
end


bR1 = Rook.new(1, 8, "black") #a8
bR2 = Rook.new(1, 1, "black") #h8
wR1 = Rook.new(8, 1, "white") #a1
wR2 = Rook.new(8, 8, "white") #h1

bN1 = Knight.new(1, 7, "black") 
bN2 = Knight.new(1, 2, "black")
wN1 = Knight.new(8, 7, "white")
wN2 = Knight.new(8, 2, "white")

bB1 = Bishop.new(1, 6, "black")
bB2 = Bishop.new(1, 3, "black")
wB1 = Bishop.new(8, 6, "white")
wB2 = Bishop.new(8, 3, "white")

bQ1 = Queen.new(1, 4, "black")
wQ1 = Queen.new(8, 5, "white")

bK1 = King.new(1, 5, "black")
wK1 = King.new(8, 4, "white")




puts "Rook:"
puts bR1.move(1, 5) #move to a5 GOOD
puts bR1.move(1, )
puts bR2.move(8, 8) #bad

puts "Knight:"
puts bN1.move(3, 8) #good
puts bN1.move(2, 5) #good
puts bN1.move(8, 4) #bad

puts "Bishop:"
puts bB1.move(4, 3) #good
puts bB1.move(5, 7) #bad

puts "Queen:"
puts bQ1.move(4, 7) #good
puts bQ1.move(6, 4) #good
puts bQ1.move(8, 8) #bad

puts "King:"
puts bK1.move(2, 5) #good
puts bK1.move(1, 6) #good
puts bK1.move(5, 3) #bad






