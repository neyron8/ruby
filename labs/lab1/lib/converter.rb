class Converter
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

  def convert_to_scale(temperature, scale_f, scale_s)
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
