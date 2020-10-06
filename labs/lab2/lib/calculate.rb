load 'input.rb'
load 'computing.rb'

# Final class
class Calculate
  def calculate
    puts '1-Min, 2-Max, 3-Average, 4-Dispersion'
    puts 'Type number of operation: '
    a = Computing.new
    a.computing_operation(Input.choose_operation)
  end
end

at = Calculate.new
p at.calculate
