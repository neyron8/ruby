class Input
  attr_accessor :temperature, :scale_f, :scale_s

  def set_temperature
    puts 'Введите температуру '
    @temperature = gets.chomp.to_f
  end

  def set_first_scale
    puts 'Введите название шкалы (С, K, F) '
    @scale_f = gets.chomp!
  end

  def set_second_scale
    puts 'Введите название шкалы в которую нужно перевести (С, K, F) '
    @scale_s = gets.chomp!
  end

  def set_variables
    set_temperature
    set_first_scale
    set_second_scale
  end
end

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
    temperature = convert_to_scale(obj)
    puts "Result is #{temperature}"
  end

  def cels_to_scale(scale_s, temperature)
    case scale_s
    when 'C'
      temperature
    when 'F'
      (temperature * 1.8 + 32)
    else
      (temperature + 273.15)
    end
  end

  def fars_to_scale(scale_s, temperature)
    case scale_s
    when 'C'
      (temperature - 32) / 1.8
    when 'F'
      temperature
    else
      (temperature - 32) / 1.8 + 273.15
    end
  end

  def kelvins_to_scale(scale_s, temperature)
    case scale_s
    when 'C'
      temperature - 273.15
    when 'F'
      1.8 * (temperature - 273.15) + 32
    else
      temperature
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

class Calculate
  def calculate
    obj = Input.new
    conv = Converter.new
    obj.set_variables
    conv.convert(obj)
  end
end

# obj = Converter.new
# p obj.valid_temperature?('120a')

# obj = Calculate.new
# obj.calculate
