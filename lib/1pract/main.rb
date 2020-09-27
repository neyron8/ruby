require './input'
require './1practice'

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
