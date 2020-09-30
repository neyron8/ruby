require './lib/converter'

RSpec.describe Converter do
  describe '.converter' do
    it 'Valid scale C' do
      expect(Converter.valid_scale?('C')).to eq true
    end

    it 'Valid scale K' do
      expect(Converter.valid_scale?('K')).to eq true
    end

    it 'Valid scale F' do
      expect(Converter.valid_scale?('F')).to eq true
    end

    it 'Invalid scale Q' do
      expect(Converter.valid_scale?('Q')).to eq false
    end

    it 'Valid temperature - 120' do
      expect(Converter.valid_temperature?('120')).to eq true
    end

    it 'Invalid temperature - q12' do
      expect(Converter.valid_temperature?('q12')).to eq false
    end

    it 'Invalid temperature - 10k' do
      expect(Converter.valid_temperature?('10k')).to eq false
    end

    it '120 C to C' do
      expect(Converter.convert_to_scale(120, 'C', 'C')).to eq 120.0
    end

    it '50 C to F' do
      expect(Converter.convert_to_scale(50, 'C', 'F')).to eq 122.0
    end

    it '40 C to K' do
      expect(Converter.convert_to_scale(40, 'C', 'K')).to eq 313.15
    end

    it '14 F to C' do
      expect(Converter.convert_to_scale(40, 'C', 'K')).to eq 313.15
    end

    it '14 F to K' do
      expect(Converter.convert_to_scale(14, 'F', 'K')).to eq 263.15
    end

    it '14 F to F' do
      expect(Converter.convert_to_scale(14, 'F', 'F')).to eq 14.0
    end

    it '14 K to C' do
      expect(Converter.convert_to_scale(14, 'K', 'C')).to eq(-259.15)
    end

    it '568 K to F' do
      expect(Converter.convert_to_scale(568, 'K', 'F')).to eq 562.73
    end

    it '568 K to K' do
      expect(Converter.convert_to_scale(568, 'K', 'K')).to eq(568.0)
    end
  end
end
