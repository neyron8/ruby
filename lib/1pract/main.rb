require './lib/1pract/input'
require './lib/1pract/1practice'

# require './input' for checking program(not tests)
# require './1practice' for checking program(not tests)

class Calculate
  def calculate
    obj = Input.new
    conv = Converter.new
    obj.set_variables
    p conv.convert(obj)
  end
end

obj = Calculate.new
obj.calculate
