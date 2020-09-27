require './lib/2pract/input'
require './lib/2pract/2practice'
require 'csv'

RSpec.describe Computing do
	obj = Computing.new
	describe '#Valid average' do
		it "Checking 'ruby.csv' - true" do
			# obj = Converter.new
			expect(obj.comp_max('./lib/2pract/ruby.csv')).to eq(12.5)
		end
	end
end
