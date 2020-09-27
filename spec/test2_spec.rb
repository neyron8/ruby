require './lib/2pract/input'
require './lib/2pract/2practice'
require 'csv'

RSpec.describe Computing do
	obj = Computing.new
	describe '#Valid file' do
		it "Checking 'ruby.csv' - true" do
		# obj = Converter.new
		expect(obj.valid_file?('ruby.csv')).to eq(true)
		end
	end
end
