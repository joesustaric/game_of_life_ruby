require 'god'
require 'cell'

describe God do
  describe '#live_or_die' do
    context 'Given an alive cell' do
      let(:cell) { Cell.new('alive') }

      context 'When we have fewer than two live neighbours' do
        let(:neighbours) { [Cell.new('alive')] }

        it 'dies' do
          expect(God.live_or_die(cell, neighbours)).to eq 'dead'
        end
      end

      context 'When we have exactly two live neighbours' do
        let(:neighbours) { [Cell.new('alive'), Cell.new('alive')] }

        it 'lives' do
          expect(God.live_or_die(cell, neighbours)).to eq 'alive'
        end
      end

      context 'When we have exactly three live neighbours' do
        let(:neighbours) do
          [
            Cell.new('alive'), Cell.new('alive'), Cell.new('alive')
          ]
        end

        it 'lives' do
          expect(God.live_or_die(cell, neighbours)).to eq 'alive'
        end
      end

      context 'When we have more than three live neighbours' do
        let(:neighbours) do
          [
            Cell.new('alive'), Cell.new('alive'),
            Cell.new('alive'), Cell.new('alive')
          ]
        end

        it 'dies' do
          expect(God.live_or_die(cell, neighbours)).to eq 'dead'
        end
      end
    end

    context 'Given an dead cell' do
      let(:cell) { Cell.new('dead') }

      context 'When we have exactly three live neighbours' do
        let(:neighbours) do
          [
            Cell.new('alive'), Cell.new('alive'),
            Cell.new('alive'), Cell.new('dead')
          ]
        end

        it 'lives' do
          expect(God.live_or_die(cell, neighbours)).to eq 'alive'
        end
      end

      context 'When we have less than three live neighbours' do
        let(:neighbours) do
          [
            Cell.new('alive'), Cell.new('alive'),
            Cell.new('dead'), Cell.new('dead')
          ]
        end

        it 'stays dead' do
          expect(God.live_or_die(cell, neighbours)).to eq 'dead'
        end
      end
    end
  end
end
