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
  end

  describe "#build_board" do
      it 'returns the board with all square coordinates' do
        expect(Chess.new.build_board).to be ()
      end
  end
end
