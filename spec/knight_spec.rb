require 'knight'

RSpec.describe Knight do
  describe '#all_moves_available' do
    context 'given [8, 8] as coordinates' do
      it 'returns [[7, 6], [6, 7]]' do
        expect(Knight.new.all_moves_available([8, 8])).to eq([[7, 6], [6, 7]])
      end
    end
    context 'given [4, 4] as coordinates' do
      it 'returns [[5, 6], [6, 5], [2, 5], [3, 6], [6, 3], [5, 2], [3, 2], [2, 3]]' do
        expect(Knight.new.all_moves_available([4, 4])).to eq([[5, 6], [6, 5], [2, 5], [3, 6], [6, 3], [5, 2], [3, 2], [2, 3]])
      end
    end
    context 'given [1, 1] as coordinates' do
      it 'returns [[2, 3], [3, 2]]' do
        expect(Knight.new.all_moves_available([1, 1])).to eq([[2, 3], [3, 2]])
      end
    end
    context 'given [4, 8] as coordinates' do
      it 'returns [[6, 7], [5, 6], [3, 6], [2, 7]]' do
        expect(Knight.new.all_moves_available([4, 8])).to eq([[6, 7], [5, 6], [3, 6], [2, 7]])
      end
    end
  end

  describe "#knight_moves" do 
    context "when given [0,0],[1,2]" do
      it "returns [[0,0],[1,2]]" do
        expect(Knight.new.knight_moves([0,0],[1,2])).to eq([[0,0],[1,2]])
      end
    end

    context "when given [0,0],[3,3]" do
      it "returns [[0,0],[1,2],[3,3]]" do
        expect(Knight.new.knight_moves([0,0],[1,2])).to eq([[0,0],[1,2],[3,3]])
      end
    end

    context "when given [3,3],[0,0]" do
      it "returns [[3,3],[1,2],[0,0]]" do
        expect(Knight.new.knight_moves([3,3],[0,0])).to eq([[3,3],[1,2],[0,0]])
      end
    end
  end
end
