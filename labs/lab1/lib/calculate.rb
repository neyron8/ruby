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
    abort 'Invalid temperature' unless conv.valid_temperature?(temperature)
    abort "Invalid scale '#{scale_f}' " unless conv.valid_scale?(scale_f)
    abort "Invalid scale '#{scale_s}' " unless conv.valid_scale?(scale_s)
    conv.convert_to_scale(temperature, scale_f, scale_s)
  end
end

obj1 = Calculate.new
p obj1.calculate
