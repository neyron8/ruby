load 'computing.rb'
require 'csv'

RSpec.describe Computing do
  describe '.computing' do
    it 'Valid operation 1' do
      expect(Computing.valid_operation?('1')).to eq true
    end

    it 'Valid operation 2' do
      expect(Computing.valid_operation?('2')).to eq true
    end

    it 'Valid operation 3' do
      expect(Computing.valid_operation?('3')).to eq true
    end

    it 'Valid operation 4' do
      expect(Computing.valid_operation?('4')).to eq true
    end

    it 'Invalid operation 5' do
      expect(Computing.valid_operation?('5')).to eq false
    end

    it 'Computing min' do
      expect(Computing.computing_operation('1')).to eq 6.1
    end

    it 'Computing max' do
      expect(Computing.computing_operation('2')).to eq 12.5
    end

    it 'Computing average' do
      expect(Computing.computing_operation('3')).to eq 8.23
    end

    it 'Computing dispers' do
      expect(Computing.computing_operation('4')).to eq 2.65
    end
  end
end
