# frozen_string_literal: true

require 'csv'

# Comp operations
class Computing
  def self.comp_max
    name = "#{__dir__}/ruby.csv"
    table = CSV.read(name, col_sep: ';', headers: true, converters: :numeric)
    @max = table[0][1]
    CSV.foreach(name, col_sep: ';', headers: true, converters: :numeric) do |(_x, y)|
      @max = y[1] if @max < y[1]
    end
    @max
  end

  def self.comp_min
    name = "#{__dir__}/ruby.csv"
    table = CSV.read(name, col_sep: ';', headers: true, converters: :numeric)
    @min = table[0][1]

    CSV.foreach(name, col_sep: ';', headers: true, converters: :numeric) do |(_x, y)|
      @min = y[1] if @min > y[1]
    end
    @min.round(2)
  end

  def self.comp_average
    @sum = 0
    @n = 0
    name = "#{__dir__}/ruby.csv"
    CSV.foreach(name, col_sep: ';', headers: true, converters: :numeric) do |(_x, y)|
      @sum += y[1]
      @n += 1
    end
    (@sum /= @n).round(2)
  end

  def self.comp_dispers
    @average = comp_average
    @n = 0
    name = "#{__dir__}/ruby.csv"
    CSV.foreach(name, col_sep: ';', headers: true, converters: :numeric) do |(_x, y)|
      @sum += (y[1] - @average)**2
      @n += 1
    end
    (@sum /= @n - 1).round(2)
  end

  def self.computing_operation(operation)
    abort "Invalid operation number '#{operation}' " unless valid_operation?(operation)
    case operation
    when '1'
      comp_min
    when '2'
      comp_max
    when '3'
      comp_average
    when '4'
      comp_dispers
    end
  end

  def self.valid_operation?(operation)
    %w[1 2 3 4].include? operation
  end
end

# obj = Calculate.new
# p obj.calculate
