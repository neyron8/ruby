require './lib/1pract/1practice'

RSpec.describe Converter do
  obj = Converter.new
  describe '#Valid Scale' do
    it "Checking 'C' - true" do
      # obj = Converter.new
      expect(obj.valid_scale?('C')).to eq(true)
    end
    it "Checking 'Q' - false" do
      # obj = Converter.new
      expect(obj.valid_scale?('Q')).to eq(false)
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
	it "Checking 'q12' - false" do
      # obj = Converter.new
      expect(obj.valid_temperature?('300')).to eq(true)
    end
  end
  describe '#Valid convertation' do
    it '12 K to C' do
      # obj = Converter.new
      obj.temperature = 12
      expect(obj.kelvins_to_scale('C')).to eq(-261.15)
    end
    it '45 F to K' do
      # obj = Converter.new
      obj.temperature = 45
      expect(obj.fars_to_scale('K')).to eq(280.3722222222222)
    end
    it '50 C to F' do
      # obj = Converter.new
      obj.temperature = 50
      expect(obj.cels_to_scale('F')).to eq(122.0)
    end
  end
end
