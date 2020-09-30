load 'computing.rb'
require 'csv'

RSpec.describe Computing do
  it 'Comp max' do
    expect(Converter.comp_max).to eq 12.5
  end

  it 'Comp average' do
    expect(Converter.comp_average).to eq 8.23
  end

  it 'Comp min' do
    expect(Converter.comp_min).to eq 6.1
  end

  it 'Comp dispers' do
    expect(Converter.comp_dispers).to eq 2.98
  end

  it 'Valid operation 1 - true' do
    expect(Converter.valid_operation?('1')).to eq true
  end

  it 'Valid operation 2 - true' do
    expect(Converter.valid_operation?('2')).to eq true
  end

  it 'Valid operation 3 - true' do
    expect(Converter.valid_operation?('3')).to eq true
  end

  it 'Valid operation 4 - true' do
    expect(Converter.valid_operation?('4')).to eq true
  end

  it 'Valid operation 5 - true' do
    expect(Converter.valid_operation?('5')).to eq false
  end

  it 'Computing min operation' do
    expect(Converter.computing_operation('1')).to eq 6.1
  end

  it 'Computing max operation' do
    expect(Converter.computing_operation('2')).to eq 12.5
  end

  it 'Computing average operation' do
    expect(Converter.computing_operation('3')).to eq 8.23
  end

  it 'Computing dispers operation' do
    expect(Converter.computing_operation('4')).to eq 2.98
  end
end
