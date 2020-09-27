require './lib/1pract/input'
require './lib/1pract/1practice'

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
