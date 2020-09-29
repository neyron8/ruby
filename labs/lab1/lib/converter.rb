class Converter
  def self.valid_scale?(scale)
    %w[C F K].include? scale
  end

  def self.valid_temperature?(temperature)
    reg_digit = '^[+-]?([1-9]\d*|0)(\.\d+)?$'
    if temperature.to_s.match(reg_digit)
      true
    else
      false
    end
  end

  def self.cels_to_scale(scale_s, temperature)
    case scale_s
    when 'F'
      (temperature.to_f * 1.8 + 32)
    else
      (temperature.to_f + 273.15)
    end
  end

  def self.fars_to_scale(scale_s, temperature)
    case scale_s
    when 'C'
      (temperature.to_f - 32) / 1.8
    else
      (temperature.to_f - 32) / 1.8 + 273.15
    end
  end

  def self.kelvins_to_scale(scale_s, temperature)
    case scale_s
    when 'C'
      temperature.to_f - 273.15
    else
      1.8 * (temperature.to_f - 273.15) + 32
    end
  end

  def self.convert_to_scale(temperature, scale_f, scale_s)
    return temperature.to_f if scale_f == scale_s

    case scale_f
    when 'C'
      convertation = cels_to_scale(scale_s, temperature)
    when 'K'
      convertation = kelvins_to_scale(scale_s, temperature)
    when 'F'
      convertation = fars_to_scale(scale_s, temperature)
    end
    convertation
  end
end
