# Input class
class Input
  def choose_operation
    puts '1-Min, 2-Max, 3-Average, 4-Dispersion'
    puts 'Type number of operation: '
    @operation = gets.chomp!
    @operation
  end
end
