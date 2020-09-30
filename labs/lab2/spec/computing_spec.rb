load 'computing.rb'
require 'csv'

RSpec.describe Computing do
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
