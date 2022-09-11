class Chess
  
  @@board = []

  def initialize
    @@board = build_board
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

  def within_board?(coordinates)
    abscissa, ordinates = coordinates
    return false unless (1..8).include? abscissa
    return false unless (1..8).include? ordinates
    true
  end
end
