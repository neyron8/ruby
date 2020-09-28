load 'input.rb'
load 'computing.rb'
require 'csv'

RSpec.describe Computing do
  obj = Computing.new
  describe '#Valid max' do
    it 'Max - true' do
      # obj = Converter.new
      expect(obj.comp_max).to eq(12.5)
    end
  end
  describe '#Valid average' do
    it 'Average - true' do
      # obj = Converter.new
      expect(obj.comp_average).to eq(8.23)
    end
  end
  describe '#Valid min' do
    it 'Min  - true' do
      # obj = Converter.new
      expect(obj.comp_min).to eq(6.1)
    end
  end
  describe '#Valid dispersion' do
    it 'Dispers - true' do
      # obj = Converter.new
      expect(obj.comp_dispers).to eq(2.98)
    end
  end
  describe '#Valid dispersion' do
    it 'Operation 1 - true' do
      # obj = Converter.new
      expect(obj.valid_operation?('1')).to eq(true)
    end
    it 'Operation 2 - true' do
      # obj = Converter.new
      expect(obj.valid_operation?('2')).to eq(true)
    end
    it 'Operation 3 - true' do
      # obj = Converter.new
      expect(obj.valid_operation?('3')).to eq(true)
    end
    it 'Operation 4 - true' do
      # obj = Converter.new
      expect(obj.valid_operation?('4')).to eq(true)
    end
    it 'Operation 5 - true' do
      # obj = Converter.new
      expect(obj.valid_operation?('5')).to eq(false)
    end
  end
  describe '#Valid computing operation' do
    it 'Min ' do
      # obj = Converter.new
      expect(obj.computing_operation('1')).to eq(6.1)
    end
    it 'Max' do
      # obj = Converter.new
      expect(obj.computing_operation('2')).to eq(12.5)
    end
    it 'Average' do
      # obj = Converter.new
      expect(obj.computing_operation('3')).to eq(8.23)
    end
    it 'Dispers' do
      # obj = Converter.new
      expect(obj.computing_operation('4')).to eq(2.98)
    end
  end
end
