require './lib/1practice'

RSpec.describe Converter do
  obj = Converter.new
  describe '#Valid Scale' do
    it "Checking 'C' - true" do
      #obj = Converter.new
      expect(obj.isValidScale?('C')).to eq(true)
    end
    it "Checking 'Q' - false" do
      #obj = Converter.new
      expect(obj.isValidScale?('Q')).to eq(false)
    end
  end
  describe '#Valid Temperature' do
    it "Checking '120' - 120.0" do
      #obj = Converter.new
      expect(obj.isValidTemperature?('120')).to eq(120.0)
    end
    it "Checking 'q12' - false" do
      #obj = Converter.new
      expect(obj.isValidTemperature?('q12')).to eq(false)
    end
  end
  describe '#Valid convertation' do
    it "12 K to C" do
      #obj = Converter.new
      expect(obj.transfToScale('K', 'C', 12)).to eq(-261.15)
    end
    it "45 F to K" do
      #obj = Converter.new
      expect(obj.transfToScale('F', 'K', 45)).to eq(280.3722222222222)
    end
    it "50 C to F" do
      #obj = Converter.new
      expect(obj.transfToScale('C', 'F', 50)).to eq(122.0)
    end
  end
end