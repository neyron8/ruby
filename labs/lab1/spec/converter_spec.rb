require './lib/converter'

RSpec.describe Converter do
  describe '.convert_to_scale' do
    context 'C to C' do
      it { expect(Converter.convert_to_scale(120, 'C', 'C')).to eq 120.0 }
    end

    context 'C to F' do
      it { expect(Converter.convert_to_scale(50, 'C', 'F')).to eq 122.0 }
    end

    context 'C to K' do
      it { expect(Converter.convert_to_scale(40, 'C', 'K')).to eq 313.15 }
    end

    context 'F to K' do
      it { expect(Converter.convert_to_scale(14, 'F', 'K')).to eq 263.15 }
    end

    context 'F to F' do
      it { expect(Converter.convert_to_scale(14, 'F', 'F')).to eq 14.0 }
    end

    context 'K to C' do
      it { expect(Converter.convert_to_scale(14, 'K', 'C')).to eq(-259.15) }
    end

    context 'K to F' do
      it { expect(Converter.convert_to_scale(568, 'K', 'F')).to eq 562.73 }
    end

    context 'K to K' do
      it { expect(Converter.convert_to_scale(568, 'K', 'K')).to eq 568.0 }
    end
  end
end
