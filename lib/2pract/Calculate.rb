require './lib/2pract/Input' # for tests
require './lib/2pract/Computing' # for tests
# require './Input' # for checking program(not tests)
# require './Computing' # for checking program(not tests)

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
