load 'computing.rb'
require 'csv'

RSpec.describe Computing do
  it 'Comp max' do
    expect(Computing.comp_max).to eq 12.5
  end

  it 'Comp average' do
    expect(Computing.comp_average).to eq 8.23
  end

  it 'Comp min' do
    expect(Computing.comp_min).to eq 6.1
  end

  it 'Comp dispers' do
    expect(Computing.comp_dispers).to eq 2.98
  end

  it 'Valid operation 1 - true' do
    expect(Computing.valid_operation?('1')).to eq true
  end

  it 'Valid operation 2 - true' do
    expect(Computing.valid_operation?('2')).to eq true
  end

  it 'Valid operation 3 - true' do
    expect(Computing.valid_operation?('3')).to eq true
  end

  it 'Valid operation 4 - true' do
    expect(Computing.valid_operation?('4')).to eq true
  end

  it 'Valid operation 5 - true' do
    expect(Computing.valid_operation?('5')).to eq false
  end

  it 'Computing min operation' do
    expect(Computing.computing_operation('1')).to eq 6.1
  end

  it 'Computing max operation' do
    expect(Computing.computing_operation('2')).to eq 12.5
  end

  it 'Computing average operation' do
    expect(Computing.computing_operation('3')).to eq 8.23
  end

  it 'Computing dispers operation' do
    expect(Computing.computing_operation('4')).to eq 2.98
  end
end
