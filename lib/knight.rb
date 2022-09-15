require_relative 'chess'
require 'byebug'


class Knight < Chess
  attr_accessor :position, :all_moves_available, :tree_of_moves, :board_of_nodes
  
  def initialize(position)
    @tree_of_moves = build_tree_of_moves
    @@board = build_board
    @@board_of_nodes = build_board_of_nodes
    within_board?(position) ? @position = position : position = nil
  end

  def add_children_to_nodes
    @board_of_nodes.each do |node|
      all_subsequent_moves = all_moves_calculation(nodes.coordinates)
      all_subsequent_moves.each do |coordinates|
        @board_of_nodes.childrens << find_node_by_coordinates(coordinates)
      end    
    end
  end

  def find_node_by_coordinates(coordinates)
    @@board_of_nodes.each do |node|
      return node if node.coordinates == coordinates
    end
  end

  def knight_moves(coordinates, destination)
    return nil unless within_board?(coordinates) || within_board?(destination)    
    all_moves_calculation(coordinates)
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

    all_moves_available = []
    until basic_moves.empty?
      ar = []
      ar << coordinates
      ar << basic_moves.first
      ar = ar.transpose
      ar.map! { |a| a.sum }
      @all_moves_available << ar if within_board?(ar)
      basic_moves.shift
    end
    all_moves_available
  end
end
