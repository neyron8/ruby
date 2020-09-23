class Converter
  attr_accessor :temperature, :scale_f, :scale_s

  def set_temperature
    puts 'Введите температуру '
    @temperature = gets.chomp
  end

  def set_first_scale
    puts 'Введите название шкалы (С, K, F) '
    @scale_f = gets.chomp!
  end

  def set_second_scale
    puts 'Введите название шкалы в которую нужно перевести (С, K, F) '
    @scale_s = gets.chomp!
  end

  def valid_scale?(scale)
    %w[C F K].include? scale
  end

  def valid_temperature?(temperature)
    @temperature = begin
                     Float(temperature)
                   rescue StandardError
                     false
                   end
  end

  def convert
    set_temperature
    abort 'Invalid temperature' unless valid_temperature?(@temperature)
    set_first_scale
    abort "Invalid scale '#{@scale_f}' " unless valid_scale?(@scale_f)
    set_second_scale
    abort "Invalid scale '#{@scale_s}' " unless valid_scale?(@scale_s)
    @temperature = convert_to_scale(@scale_f)
    puts "Result is #{@temperature}"
  end

  def cels_to_scale(scale_s)
    case scale_s
    when 'C'
      @temperature
    when 'F'
      @temperature * 1.8 + 32
    else
      @temperature + 273.15
    end
  end

  def fars_to_scale(scale_s)
    case scale_s
    when 'C'
      (@temperature - 32) / 1.8
    when 'F'
      @temperature
    else
      (@temperature - 32) / 1.8 + 273.15
    end
  end

  def kelvins_to_scale(scale_s)
    case scale_s
    when 'C'
      @temperature - 273.15
    when 'F'
      1.8 * (@temperature - 273.15) + 32
    else
      @temperature
    end
  end

  def convert_to_scale(scale_f)
    case scale_f
    when 'C'
      cels_to_scale(@scale_s)
    when 'F'
      fars_to_scale(@scale_s)
    else
      kelvins_to_scale(@scale_s)
    end
  end
end

obj = Converter.new
# obj.temperature = 0.0
# p obj.cels_to_scale('F')
# puts obj.isValidTemperature?('12')
# obj.convert
# puts obj.transfToScale('C', 'F', 50)
