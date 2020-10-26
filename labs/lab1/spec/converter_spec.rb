require './lib/converter'

RSpec.describe Converter do
  describe '#valid_scale?' do
    context 'Input value - C true' do
      it { expect(Converter.valid_scale?('C')).to eq true }
    end

    context 'Input value - K true' do
      it { expect(Converter.valid_scale?('K')).to eq true }
    end

    context 'Input value - F true' do
      it { expect(Converter.valid_scale?('F')).to eq true }
    end

    context 'Input value - Q false' do
      it { expect(Converter.valid_scale?('Q')).to eq false }
    end
  end

  describe '#valid_temperature?' do
    context 'Input temperature true' do
      it { expect(Converter.valid_temperature?('120')).to eq true }
    end

    context 'Input temperature false' do
      it { expect(Converter.valid_temperature?('q12')).to eq false }
    end
  end

  describe '#convert_to_scale' do
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
      it { expect(Converter.convert_to_scale(568, 'K', 'K')).to eq(568.0) }
    end
  end
end
