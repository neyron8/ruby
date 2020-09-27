require './lib/1pract/input' # for tests
# require './input' # for checking program(not tests)

class Converter
  def valid_scale?(scale)
    %w[C F K].include? scale
  end

  def valid_temperature?(temperature)
    reg_digit = '^[+-]?([1-9]\d*|0)(\.\d+)?$'
    if temperature.to_s.match(reg_digit)
      true
    else
      false
    end
  end

  def convert(obj)
    abort 'Invalid temperature' unless valid_temperature?(obj.temperature)
    abort "Invalid scale '#{obj.scale_f}' " unless valid_scale?(obj.scale_f)
    abort "Invalid scale '#{obj.scale_s}' " unless valid_scale?(obj.scale_s)
    convert_to_scale(obj)
  end

  def cels_to_scale(scale_s, temperature)
    case scale_s
    when 'C'
      temperature.to_f
    when 'F'
      (temperature.to_f * 1.8 + 32)
    else
      (temperature.to_f + 273.15)
    end
  end

  def fars_to_scale(scale_s, temperature)
    case scale_s
    when 'C'
      (temperature.to_f - 32) / 1.8
    when 'F'
      temperature.to_f
    else
      (temperature.to_f - 32) / 1.8 + 273.15
    end
  end

  def kelvins_to_scale(scale_s, temperature)
    case scale_s
    when 'C'
      temperature.to_f - 273.15
    when 'F'
      1.8 * (temperature.to_f - 273.15) + 32
    else
      temperature.to_f
    end
  end

  def convert_to_scale(obj)
    case obj.scale_f
    when 'C'
      cels_to_scale(obj.scale_s, obj.temperature)
    when 'F'
      fars_to_scale(obj.scale_s, obj.temperature)
    else
      kelvins_to_scale(obj.scale_s, obj.temperature)
    end
  end
end
