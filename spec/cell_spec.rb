require 'cell'

describe Cell do
  describe '#alive?' do
    context 'Given an alive cell' do
      let(:cell) { Cell.new('alive') }

      it { expect(cell.alive?).to be true }
    end

    context 'Given a dead cell' do
      let(:cell) { Cell.new('dead') }

      it { expect(cell.alive?).to be false }
    end
  end
end
