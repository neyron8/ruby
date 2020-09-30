load 'input.rb'
load 'computing.rb'

# Final class
class Calculate
  def self.calculate
    puts '1-Min, 2-Max, 3-Average, 4-Dispersion'
    puts 'Type number of operation: '
    Computing.computing_operation(Input.choose_operation)
  end
end

p Calculate.calculate
