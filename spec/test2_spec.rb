require './lib/2pract/input'
require './lib/2pract/2practice'
require 'csv'

RSpec.describe Computing do
	obj = Computing.new
	describe '#Valid max' do
		it "Max = 12.5 - true" do
			# obj = Converter.new
			expect(obj.comp_max('./lib/2pract/ruby.csv')).to eq(12.5)
		end
	end
	describe '#Valid average' do
		it "Max = 12.5 - true" do
			# obj = Converter.new
			expect(obj.comp_max('./lib/2pract/ruby.csv')).to eq(8.21)
		end
	end
end
