require './lib/2pract/input'
require './lib/2pract/2practice'
# require './input' for checking program(not tests)
# require './2practice' for checking program(not tests)

# Final class
class Calculate
  def calculate
    obj = Input.new
    comp = Computing.new
    comp.valid_file?('./ruby.csv')
    comp.computing_operation(obj.choose_operation, 'ruby.csv')
  end
end

obj = Calculate.new
p obj.calculate
