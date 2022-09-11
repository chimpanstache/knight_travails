module Chess
  class Board  
    attr_accessor :board, :knight, :coordinates

    def initialize
      @board = build_board
      @knight = nil
    end

    def build_board
      ar = []

      1.upto(8) do |ordinates|
        1.upto(8) do |abscissa|
          ar << [ordinates, abscissa]
        end
      end
      ar
    end

    def knight_moves(coordinates, destination)
      return nil unless within_board?(coordinates) || within_board?(destination)    
      all_moves_calculation(coordinates)

    end

    def all_moves_calculation(coordinates)
      every_moves = [
        [1, 2],
        [2, 1],
        [-2, 1],
        [-1, 2],
        [2, -1],
        [1, -2],
        [-1, -2],
        [-2, -1]
      ]

      @all_moves = []
      until every_moves.empty?
      ar = []
      ar << 
      ar << coordinates

    end

    private

    def within_board?(coordinates)
      abscissa, ordinates = coordinates
      return false unless (1..8).include? abscissa
      return false unless (1..8).include? ordinates
      true
    end
  end
end
