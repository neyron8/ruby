require './lib/2pract/input'
require './lib/2pract/2practice'
require 'csv'

RSpec.describe Computing do
	obj = Computing.new
	describe '#Valid max' do
		it "Max - true" do
			# obj = Converter.new
			expect(obj.comp_max('./lib/2pract/ruby.csv')).to eq(12.5)
		end
	end
	describe '#Valid average' do
		it "Average - true" do
			# obj = Converter.new
			expect(obj.comp_average('./lib/2pract/ruby.csv')).to eq(8.21)
		end
	end
	describe '#Valid min' do
		it "Min  - true" do
			# obj = Converter.new
			expect(obj.comp_min('./lib/2pract/ruby.csv')).to eq(8.21)
		end
	end
	describe '#Valid dispersion' do
		it "Dispers - true" do
			# obj = Converter.new
			expect(obj.comp_dispers('./lib/2pract/ruby.csv')).to eq(8.21)
		end
	end
	describe '#Valid dispersion' do
		it "Operation 1 - true" do
			# obj = Converter.new
			expect(obj.valid_operation?(1)).to eq(true)
		end
		it "Operation 2 - true" do
			# obj = Converter.new
			expect(obj.valid_operation?(2)).to eq(true)
		end
		it "Operation 3 - true" do
			# obj = Converter.new
			expect(obj.valid_operation?(3)).to eq(true)
		end
		it "Operation 4 - true" do
			# obj = Converter.new
			expect(obj.valid_operation?(4)).to eq(true)
		end
		it "Operation 5 - true" do
			# obj = Converter.new
			expect(obj.valid_operation?(4)).to eq(false)
		end
	end
end
