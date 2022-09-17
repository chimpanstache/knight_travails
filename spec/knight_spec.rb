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
      it "returns nil" do
        expect(Knight.new.knight_moves([0,0],[1,2])).to be_nil
      end
    end

    context "when given [3,3],[0,0]" do
      it "returns nil" do
        expect(Knight.new.knight_moves([3,3],[0,0])).to be_nil
      end
    end
    
    context "when given [0,0],[9,9]" do
      it "returns nil" do
        expect(Knight.new.knight_moves([0,0],[9,9])).to be_nil
      end
    end
    
    context "when given [3,3],[4,3]" do
      it "returns [[3,3],[4,5],[2,4],[4,3]]" do
        expect(Knight.new.knight_moves([3,3],[4,3])).to eq([[3,3],[4,5],[6,4],[4,3]])
      end
    end

    context "when given [3,3],[1,1]" do
      it "returns [[3, 3], [4, 5], [5, 3], [3, 2], [1, 1]]" do
        expect(Knight.new.knight_moves([3,3],[1,1])).to eq([[3, 3], [4, 5], [5, 3], [3, 2], [1, 1]])
      end
    end

    context "when given [1,1],[8,8]" do
      it "returns [[1, 1], [2, 3], [3, 5], [4, 7], [6, 8], [7, 6], [8, 8]]" do
        expect(Knight.new.knight_moves([1,1],[8,8])).to eq([[1, 1], [2, 3], [3, 5], [4, 7], [6, 8], [7, 6], [8, 8]])
      end
    end

    context "when given [8,8],[1,1]" do
      it "returns [[8, 8], [7, 6], [5, 7], [6, 5], [5, 3], [3, 2], [1, 1]]" do
        expect(Knight.new.knight_moves([8,8],[1,1])).to eq([[8, 8], [7, 6], [5, 7], [6, 5], [5, 3], [3, 2], [1, 1]])
      end
    end

    context "when given [1,8],[8,1]" do
      it "returns[[1, 8], [3, 7], [5, 8], [7, 7], [8, 5], [7, 3], [8, 1]]" do
        expect(Knight.new.knight_moves([1,8],[8,1])).to eq([[1, 8], [3, 7], [5, 8], [7, 7], [8, 5], [7, 3], [8, 1]])
      end
    end
       
    context "when given [8,8],[1,8]" do
      it "returns [[8, 8], [7, 6], [5, 7], [3, 8], [2, 6], [1, 8]]" do
        expect(Knight.new.knight_moves([8,8],[1,8])).to eq([[8, 8], [7, 6], [5, 7], [3, 8], [2, 6], [1, 8]])
      end
    end
  end
end
