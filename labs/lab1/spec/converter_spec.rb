require './lib/converter'

RSpec.describe Converter do
  describe '#Converter' do
    it 'Valid scale C -> true' do
      expect(Converter.valid_scale?('C')).to eq true
    end

    it 'Valid scale K -> true' do
      expect(Converter.valid_scale?('K')).to eq true
    end

    it 'Valid scale F -> true' do
      expect(Converter.valid_scale?('F')).to eq true
    end

    it 'Valid scale Q -> false' do
      expect(Converter.valid_scale?('Q')).to eq false
    end

    it 'Valid temperature - 120 -> true' do
      expect(Converter.valid_temperature?('120')).to eq true
    end

    it 'Valid temperature - q12 -> false' do
      expect(Converter.valid_temperature?('q12')).to eq false
    end

    it 'Valid temperature - 10k -> false' do
      expect(Converter.valid_temperature?('10k')).to eq false
    end

    it '120 C to C convert to scale' do
      expect(Converter.convert_to_scale(120, 'C', 'C')).to eq 120.0
    end

    it '50 C to F convert to scale' do
      expect(Converter.convert_to_scale(50, 'C', 'F')).to eq 122.0
    end

    it '40 C to K convert to scale' do
      expect(Converter.convert_to_scale(40, 'C', 'K')).to eq 313.15
    end

    it '14 F to C convert to scale' do
      expect(Converter.convert_to_scale(40, 'C', 'K')).to eq 313.15
    end

    it '14 F to K convert to scale' do
      expect(Converter.convert_to_scale(14, 'F', 'K')).to eq 263.15
    end

    it '14 F to F convert to scale' do
      expect(Converter.convert_to_scale(14, 'F', 'F')).to eq 14.0
    end

    it '14 K to C convert to scale' do
      expect(Converter.convert_to_scale(14, 'K', 'C')).to eq(-259.15)
    end

    it '568 K to F convert to scale' do
      expect(Converter.convert_to_scale(568, 'K', 'F')).to eq 562.73
    end

    it '568 K to K convert to scale' do
      expect(Converter.convert_to_scale(568, 'K', 'K')).to eq(568.0)
    end
  end
end
