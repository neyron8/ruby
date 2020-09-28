load 'input.rb'
load 'converter.rb'

# require './input' # for checking program(not tests)
# require './converter' # for checking program(not tests)

class Calculate
  def calculate
    obj = Input.new
    conv = Converter.new
    temperature = obj.set_temperature
    scale_f = obj.set_scale
    scale_s = obj.set_scale
    conv.convert_to_scale(temperature, scale_f, scale_s)
  end
end

obj1 = Calculate.new
p obj1.calculate
