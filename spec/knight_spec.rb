require 'knight'

RSpec.describe Knight do
  describe '#all_moves_calculation' do
    context 'given [8, 8] as coordinates' do
      it 'returns [[7, 6], [6, 7]]' do
        expect(Knight.new([8, 8]).all_moves_calculation).to eq([[7, 6], [6, 7]])
      end
    end
    context 'given [4, 4] as coordinates' do
      it 'returns [[5, 6], [6, 5], [2, 5], [3, 6], [6, 3], [5, 2], [3, 2], [2, 3]]' do
        expect(Knight.new([4, 4]).all_moves_calculation).to eq([[5, 6], [6, 5], [2, 5], [3, 6], [6, 3], [5, 2], [3, 2], [2, 3]])
      end
    end
    context 'given [1, 1] as coordinates' do
      it 'returns [[2, 3], [3, 2]]' do
        expect(Knight.new([1, 1]).all_moves_calculation).to eq([[2, 3], [3, 2]])
      end
    end
    context 'given [4, 8] as coordinates' do
      it 'returns [[6, 7], [5, 6], [3, 6], [2, 7]]' do
        expect(Knight.new([4, 8]).all_moves_calculation).to eq([[6, 7], [5, 6], [3, 6], [2, 7]])
      end
    end
  end
end
