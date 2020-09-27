# frozen_string_literal: true

require 'csv'
require_relative './lib/2pract/input'

# Comp operations
class Computing
  def comp_max(name)
    table = CSV.read(name, col_sep: ';', headers: true, converters: :numeric)
    @max = table[0][1]
    CSV.foreach(name, col_sep: ';', headers: true, converters: :numeric) do |(_x, y)|
      @max = y[1] if @max < y[1]
    end
    @max
  end

  def comp_min(name)
    table = CSV.read(name, col_sep: ';', headers: true, converters: :numeric)
    @min = table[0][1]

    CSV.foreach(name, col_sep: ';', headers: true, converters: :numeric) do |(_x, y)|
      @min = y[1] if @min > y[1]
    end
    @min.round(2)
  end

  def comp_average(name)
    @sum = 0
    @n = 0
    CSV.foreach(name, col_sep: ';', headers: true, converters: :numeric) do |(_x, y)|
      @sum += y[1]
      @n += 1
    end
    (@sum /= @n).round(2)
  end

  def comp_dispers(name)
    @average = comp_average(name)
    @n = 0
    CSV.foreach(name, col_sep: ';', headers: true, converters: :numeric) do |(_x, y)|
      @sum += (y[1] - @average)**2
      @n += 1
    end
    (@sum /= @n - 1).round(2)
  end

  def computing_operation(operation, name)
    abort "Invalid operation number '#{operation}' " unless valid_operation?(operation)
    case operation
    when '1'
      comp_min(name)
    when '2'
      comp_max(name)
    when '3'
      comp_average(name)
    when '4'
      comp_dispers(name)
    end
  end

  def valid_operation?(operation)
    %w[1 2 3 4].include? operation
  end

  def valid_file?(name)
    File.exist?(name)
  end
end

# obj = Calculate.new
# p obj.calculate
