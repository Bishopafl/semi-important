#has to be under the piece classes
class Game
	def initialize
		@board = {
			a1: 
			#Put the code that holds each pieces spot on the board.
		}
	end

	def split_coords(position)
		split_position = position.chars
		x = split_position[0]
		y = split_coords[1].to_i
		x = x.downcase.ord - 96
		[x, y]

	end

	def move_on_board?(start_position, end_position)
		@board.has_key?(start_position.to_sym) && @board.has_key?(end_position.to_sym)
	end

	def piece_at_pos(position)
		@board[position.to_sym]
	end

	def valid_move?(start_position, end_position)
		#check to see if start position is on the board
		#if the end position is on the board
		#if the piece at the start position can move the way we ask
		if move_on_board?(start_position, end_position)
			return false
		elsif piece_at_pos(start_position)
			return false
		elsif !piece_at_pos(end_position)
			return false
		elsif !@board[start_position.to_sym].move(end_position) == false
			
		end
				

	end

end


# class ChessValidator / Board
# ============================
#
# Attributes
# ----------
# @pieces / positions
# @boundries / @size
#
#
# Actions
# -------
# def rules
# def remove_piece
# def turns
# Collision
