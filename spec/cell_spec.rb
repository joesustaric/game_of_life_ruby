require 'cell'

describe Cell do
  describe '#alive?' do
    context 'Given an alive cell' do
      let(:cell) { Cell.new('alive') }

      it 'returns true' do
        expect(cell.alive?).to be true
      end
    end

    context 'Given a dead cell' do
      let(:cell) { Cell.new('dead') }

      it 'returns false' do
        expect(cell.alive?).to be false
      end
    end
  end
end
