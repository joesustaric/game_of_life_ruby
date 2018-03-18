require 'world'

describe World do
  describe '#new' do
    context 'Given no size speified' do
      let(:world) { World.new }

      it 'creates the world with the minimum default size' do
        expect(world.x).to eq 5
        expect(world.y).to eq 5
      end
    end

    context 'Given under the minimum world size for x' do
      it 'raises' do
        expect { World.new(x: 4) }.to raise_error('OutOfBoundsError')
      end
    end

    context 'Given under the minimum world size for y' do
      it 'raises' do
        expect { World.new(y: 4) }.to raise_error('OutOfBoundsError')
      end
    end

    context 'Given over the maximum world size fpor x' do
      it 'raises' do
        expect { World.new(x: 21) }.to raise_error('OutOfBoundsError')
      end
    end

    context 'Given over the maximum world size fpor y' do
      it 'raises' do
        expect { World.new(y: 21) }.to raise_error('OutOfBoundsError')
      end
    end
  end

  describe '#seed' do

  end
end
