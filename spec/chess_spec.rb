require 'chess'

RSpec.describe Chess do
  describe '#within_board?' do
    context 'given [9, 1]' do
      it 'returns false' do
        expect(Chess.new.within_board?([9,1])).to be false
      end
    end
    context 'given [8, 8]' do
      it 'returns true' do
        expect(Chess.new.within_board?([8,8])).to be true
      end
    end
    context 'given [2, 3]' do
      it 'returns true' do
        expect(Chess.new.within_board?([2,3])).to be true
      end
    end
    context 'given [-1, 4]' do
      it 'returns false' do
        expect(Chess.new.within_board?([-1,4])).to be false
      end
    end
    context 'given [0, 0]' do
      it 'returns true' do
        expect(Chess.new.within_board?([0,0])).to be false
      end
    end
  end

  describe "#build_board" do
      it 'returns the board with all square coordinates' do
        expect(Chess.new.build_board).to eq ([[1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8],
           [2, 1], [2, 2], [2, 3], [2, 4], [2, 5], [2, 6], [2, 7], [2, 8],
            [3, 1], [3, 2], [3, 3], [3, 4], [3, 5], [3, 6], [3, 7], [3, 8],
             [4, 1], [4, 2], [4, 3], [4, 4], [4, 5], [4, 6], [4, 7], [4, 8],
              [5, 1], [5, 2], [5, 3], [5, 4], [5, 5], [5, 6], [5, 7], [5, 8],
               [6, 1], [6, 2], [6, 3], [6, 4], [6, 5], [6, 6], [6, 7], [6, 8],
                [7, 1], [7, 2], [7, 3], [7, 4], [7, 5], [7, 6], [7, 7], [7, 8],
                 [8, 1], [8, 2], [8, 3], [8, 4], [8, 5], [8, 6], [8, 7], [8, 8]])
      end
  end
end
