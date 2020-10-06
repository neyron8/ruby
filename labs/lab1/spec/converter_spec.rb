require './lib/converter'

RSpec.describe Converter do
  describe '#valid_scale?' do
    context 'Input value - С, true type' do
      it { expect(Converter.valid_scale?('C')).to eq true }
    end

    context 'Input value - K, true type' do
      it { expect(Converter.valid_scale?('K')).to eq true }
    end

    context 'Input value - F, true type' do
      it { expect(Converter.valid_scale?('F')).to eq true }
    end

    context 'Input value - Q, false type' do
      it { expect(Converter.valid_scale?('C')).to eq false }
    end
  end

  describe '#valid_temperature?' do
    context 'Input temperature is valid' do
      it { expect(Converter.valid_temperature?('120')).to eq true }
    end

    context 'Input temperature is not valid' do
      it { expect(Converter.valid_temperature?('q12')).to eq false }
    end
  end

  describe '#convert_to_scale' do
    context '120 C conv to C' do
      it { expect(Converter.convert_to_scale(120, 'C', 'C')).to eq 120.0 }
    end

    context '50 C conv to F' do
      it { expect(Converter.convert_to_scale(50, 'C', 'F')).to eq 122.0 }
    end

    context '40 C conv to K' do
      it { expect(Converter.convert_to_scale(40, 'C', 'K')).to eq 313.15 }
    end

    context '14 F conv to K' do
      it { expect(Converter.convert_to_scale(14, 'F', 'K')).to eq 263.15 }
    end

    context '14 F conv to F' do
      it { expect(Converter.convert_to_scale(14, 'F', 'F')).to eq 14.0 }
    end

    context '14 K conv to C' do
      it { expect(Converter.convert_to_scale(14, 'K', 'C')).to eq(-259.15) }
    end

    context '568 K conv to F' do
      it { expect(Converter.convert_to_scale(568, 'K', 'F')).to eq 562.73 }
    end

    context '568 K conv to K' do
      it { expect(Converter.convert_to_scale(568, 'K', 'K')).to eq(568.0) }
    end
  end
end
