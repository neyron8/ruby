require './lib/converter'

RSpec.describe Converter do
  describe '.converter' do
    context 'from CELSIUS to FAHRENHEIT' do
      it { expect(Converter.valid_scale?('C')).to eq true }
    end
  end
  describe '#Valid Scale' do
    it "Checking 'C' - true" do
      # obj = Converter.new
      expect(obj.valid_scale?('C')).to eq(true)
    end
    it "Checking 'K' - true" do
      # obj = Converter.new
      expect(obj.valid_scale?('K')).to eq(true)
    end
    it "Checking 'Q' - false" do
      # obj = Converter.new
      expect(obj.valid_scale?('Q')).to eq(false)
    end
    it "Checking 'F' - true" do
      # obj = Converter.new
      expect(obj.valid_scale?('F')).to eq(true)
    end
  end
  describe '#Valid Temperature' do
    it "Checking '120' - 120.0" do
      # obj = Converter.new
      expect(obj.valid_temperature?('120')).to eq(true)
    end
    it "Checking 'q12' - false" do
      # obj = Converter.new
      expect(obj.valid_temperature?('q12')).to eq(false)
    end
    it "Checking '10k' - false" do
      # obj = Converter.new
      expect(obj.valid_temperature?('10k')).to eq(false)
    end
    it "Checking '934a8' - false" do
      # obj = Converter.new
      expect(obj.valid_temperature?('934a8')).to eq(false)
    end
    it "Checking '300' - true" do
      # obj = Converter.new
      expect(obj.valid_temperature?('300')).to eq(true)
    end
  end
  describe '#Valid convertation' do
    it '12 K to C' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.kelvins_to_scale('C', 12)).to eq(-261.15)
    end
    it '568 K to F' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.kelvins_to_scale('F', 568)).to eq(562.73)
    end
    it '45 F to K' do
      # obj = Converter.new
      # obj.temperature = 45
      expect(obj.fars_to_scale('K', 45)).to eq(280.3722222222222)
    end
    it '14 F to C' do
      # obj = Converter.new
      # obj.temperature = 45
      expect(obj.fars_to_scale('C', 14)).to eq(-10.0)
    end
    it '50 C to F' do
      # obj = Converter.new
      # obj.temperature = 50
      expect(obj.cels_to_scale('F', 50)).to eq(122.0)
    end
    it '50 C to K' do
      # obj = Converter.new
      # obj.temperature = 50
      expect(obj.cels_to_scale('K', 40)).to eq(313.15)
    end
  end
  describe '#Valid convertation(object)' do
    it '120 C to C' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(120, 'C', 'C')).to eq(120.0)
    end
    it '50 C to F' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(50, 'C', 'F')).to eq(122.0)
    end
    it '40 C to K' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(40, 'C', 'K')).to eq(313.15)
    end
    it '14 F to C' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(14, 'F', 'C')).to eq(-10.0)
    end
    it '14 F to K' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(14, 'F', 'K')).to eq(263.15)
    end
    it '14 F to F' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(14, 'F', 'F')).to eq(14.0)
    end
    it '14 K to C' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(14, 'K', 'C')).to eq(-259.15)
    end
    it '568 K to F' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(568, 'K', 'F')).to eq(562.73)
    end
    it '568 K to K' do
      # obj = Converter.new
      # obj.temperature = 12
      expect(obj.convert_to_scale(568, 'K', 'K')).to eq(568.0)
    end
  end
end
