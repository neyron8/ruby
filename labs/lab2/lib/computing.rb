# frozen_string_literal: true

require 'csv'

# Comp operations
class Computing
  def initialize
    name = "#{__dir__}/ruby.csv"
    @arr = []
    CSV.foreach(name, col_sep: ';') do |a|
      @arr << a[1].to_f
    end
    @arr.shift
  end

  def comp_max
    @arr.max
  end

  def comp_min
    @arr.min.round(2)
  end

  def comp_average
    (@arr.sum / @arr.size).round(2)
  end

  def comp_dispers
    avg = comp_average
    iter = @arr.map { |a| (a - avg)**2 }
    iter = iter.sum
    iter /= @arr.length - 1
    iter.round(2)
  end

  def computing_operation(operation)
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

  def valid_operation?(operation)
    %w[1 2 3 4].include? operation
  end
end

# obj = Calculate.new
# p obj.calculate
