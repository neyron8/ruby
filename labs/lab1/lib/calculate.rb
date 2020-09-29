load 'input.rb'
load 'converter.rb'

# require './input' # for checking program(not tests)
# require './converter' # for checking program(not tests)

class Calculate
  def self.calculate
    temperature = Input.set_temperature
    scale_f = Input.set_scale
    scale_s = Input.set_scale
    abort 'Invalid temperature' unless Converter.valid_temperature?(temperature)
    abort "Invalid scale '#{scale_f}' " unless Converter.valid_scale?(scale_f)
    abort "Invalid scale '#{scale_s}' " unless Converter.valid_scale?(scale_s)
    Converter.convert_to_scale(temperature, scale_f, scale_s)
  end
end

p Calculate.calculate
