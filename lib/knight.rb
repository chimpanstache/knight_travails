require_relative 'chess'
require 'byebug'

class Knight < Chess
  attr_accessor :position, :all_moves_available
  
  def initialize(position)
    @@board = build_board
    within_board?(position) ? @position = position : position = nil
  end

  def knight_moves(coordinates, destination)
    return nil unless within_board?(coordinates) || within_board?(destination)    
    all_moves_calculation(coordinates)
  end

  def all_moves_available
    all_moves_calculation
  end

  def all_moves_calculation(coordinates = @position)
    basic_moves = [
      [1, 2],
      [2, 1],
      [-2, 1],
      [-1, 2],
      [2, -1],
      [1, -2],
      [-1, -2],
      [-2, -1]
    ]

    @all_moves_available = []
    until basic_moves.empty?
      ar = []
      ar << coordinates
      ar << basic_moves.first
      ar = ar.transpose
      ar.map! { |a| a.sum }
      @all_moves_available << ar if within_board?(ar)
      basic_moves.shift
    end
    @all_moves_available
  end
end