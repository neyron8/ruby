load 'computing.rb'
require 'csv'

RSpec.describe Computing do
  subject do
    Computing.new
  end

  describe '#valid_operation?' do
    context 'Input value - 1, number in range' do
      it { expect(subject.valid_operation?('1')).to eq true }
    end

    context 'Input value - 2, number in range' do
      it { expect(subject.valid_operation?('2')).to eq true }
    end

    context 'Input value - 3, number in range' do
      it { expect(subject.valid_operation?('3')).to eq true }
    end

    context 'Input value - 4, number in range' do
      it { expect(subject.valid_operation?('4')).to eq true }
    end

    context 'Input value - 5, number not in range' do
      it { expect(subject.valid_operation?('5')).to eq false }
    end
  end

  describe '#computing_operation' do
    context 'Computing min' do
      it { expect(subject.computing_operation('1')).to eq 6.1 }
    end

    context 'Computing max' do
      it { expect(subject.computing_operation('2')).to eq 12.5 }
    end

    context 'Computing average' do
      it { expect(subject.computing_operation('3')).to eq 8.23 }
    end

    context 'Computing dispers' do
      it { expect(subject.computing_operation('4')).to eq 2.65 }
    end
  end
end
