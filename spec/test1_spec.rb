require './lib/1pract/converter'
require './lib/1pract/input'

RSpec.describe Converter do
  obj = Converter.new
  inp = Input.new
  describe '#Valid Scale' do
    it "Checking 'C' - true" do
      # obj = Converter.new
      expect(obj.valid_scale?('C')).to eq(true)
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
    it '45 F to K' do
      # obj = Converter.new
      # obj.temperature = 45
      expect(obj.fars_to_scale('K', 45)).to eq(280.3722222222222)
    end
    it '50 C to F' do
      # obj = Converter.new
      # obj.temperature = 50
      expect(obj.cels_to_scale('F', 50)).to eq(122.0)
    end
  end
  describe '#Valid convertation(object)' do
	it '120 C to C' do
	  # obj = Converter.new
	  # obj.temperature = 12
	  inp.temperature = 120;
	  inp.scale_f = 'C'
	  inp.scale_s = 'C'
	  expect(obj.convert(inp)).to eq(120.0)
    end
	it '50 C to F' do
	  # obj = Converter.new
	  # obj.temperature = 12
	  inp.temperature = 50;
	  inp.scale_f = 'C'
	  inp.scale_s = 'F'
	  expect(obj.convert(inp)).to eq(122.0)
    end
  end
  describe '#Valid convert to scale' do
	it '12 K to C' do
	  # obj = Converter.new
	  # obj.temperature = 12
	  inp.temperature = 12;
	  inp.scale_f = 'K'
	  inp.scale_s = 'C'
	  expect(obj.convert(inp)).to eq(-261.15)
    end
	it '50 C to F' do
	  # obj = Converter.new
	  # obj.temperature = 12
	  inp.temperature = 50;
	  inp.scale_f = 'C'
	  inp.scale_s = 'F'
	  expect(obj.convert(inp)).to eq(122.0)
    end
  end
end
