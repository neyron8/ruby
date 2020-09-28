require './lib/2pract/input' # for tests
require './lib/2pract/iomputing' # for tests
# require './input' # for checking program(not tests)
# require './computing' # for checking program(not tests)

# Final class
class Calculate
  def calculate
    obj = Input.new
    comp = Computing.new
    comp.computing_operation(obj.choose_operation, 'ruby.csv')
  end
end

obj = Calculate.new
p obj.calculate
