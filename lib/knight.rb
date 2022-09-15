require_relative 'chess'
require 'byebug'


class Knight < Chess
  attr_accessor :position, :all_moves_available, :tree_of_moves, :board_of_nodes
  
  def initialize
    @@board = build_board
  end

  def knight_moves(coordinates, destination)
    return nil unless within_board?(coordinates) || within_board?(destination)    
    queue_of_moves = []
    queue_of_moves << coordinates
    path_to_destination_raw = breadth_first_search(queue_of_moves, destination)
    byebug
    path_to_destination_nice = path_to_destination_processing(path_to_destination_raw)
  end
  
  def path_to_destination_processing(raw_path)
    raw_path = raw_path.flatten
    path_to_return = []
    until raw_path.empty?
      ar = []
      ar << raw_path[0]
      ar << raw_path[1]
      raw_path.shift
      raw_path.shift
      path_to_return << ar
    end
    byebug
    path_to_return.reverse
  end

  def breadth_first_search(queue, destination)
    until queue.empty?
      parent = queue.first
      return parent if parent[0] == destination[0] && parent[1] == destination[1] 
      child_moves = all_moves_available(parent[0..1])
      child_moves.each { |mov| mov << parent }
      child_moves.each { |mov| queue << mov }
      queue.shift
    end
  end

  def all_moves_available(coordinates)
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

    all_moves = []
    until basic_moves.empty?
      ar = []
      ar << coordinates
      ar << basic_moves.first
      ar = ar.transpose
      ar.map! { |a| a.sum }
      all_moves << ar if within_board?(ar)
      basic_moves.shift
    end
    all_moves
  end
end
