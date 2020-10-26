load 'input.rb'
load 'converter.rb'

# require './input' # for checking program(not tests)
# require './converter' # for checking program(not tests)

class Calculate
  def self.calculate
    reg_digit = '^[+-]?([1-9]\d*|0)(\.\d+)?$'
    temperature = Input.set_temperature
    abort 'Invalid temperature' unless temperature.to_s.match(reg_digit)
    scale_f = Input.set_scale
    abort "Invalid scale '#{scale_f}' " unless %w[C F K].include? scale_f
    scale_s = Input.set_scale
    abort "Invalid scale '#{scale_s}' " unless %w[C F K].include? scale_s
    Converter.convert_to_scale(temperature, scale_f, scale_s)
  end
end
