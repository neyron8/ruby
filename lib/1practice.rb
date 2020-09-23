class Converter
  def get_temperature
    puts 'Введите температуру '
    @temperature = gets
    @temperature.chomp!
  end

  def is_Valid_Scale?(scale)
    %w[C F K].include? scale
  end

  def is_Valid_Temperature?(temperature)
    @temperature = begin
                     Float(temperature)
                   rescue StandardError
                     false
                   end
    # puts @temperature
  end

  def getFirstScale
    puts 'Введите название шкалы (С, K, F) '
    @scale_f = gets
    @scale_f.chomp!
    # j = isValidScale?
  end

  def getSecondScale
    puts 'Введите название шкалы в которую нужно перевести (С, K, F) '
    @scale_s = gets
    @scale_s.chomp!
    # j = isValidScale?
  end

  def convert
    getTemperature
    abort 'Invalid temperature' unless is_Valid_Temperature?(@temperature)
    getFirstScale
    abort "Invalid scale '#{@scale_f}' " unless is_Valid_Scale?(@scale_f)
    getSecondScale
    abort "Invalid scale '#{@scale_s}' " unless is_Valid_Scale?(@scale_s)
    @temperature = transfToScale(@scale_f, @scale_s, @temperature)
    puts "Result is #{@temperature}"
    # @temperature+= 10
    # puts @temperature
  end

  def transfToScale(scale_f, scale_s, temperature)
    case scale_f
    when 'C'
      case scale_s
      when 'C'
        # puts 'Cels into cels'
        temperature += 0
      when 'F'
        # puts 'Cels into F'
        temperature = temperature * 1.8 + 32
      when 'K'
        # puts 'Cels into K'
        temperature += 273.15
      end
    when 'F'
      case scale_s
      when 'C'
        # puts 'F into cels'
        temperature = (temperature - 32) / 1.8
      when 'F'
        # puts 'F into F'
        temperature += 0
      when 'K'
        # puts 'F into K'
        temperature = (temperature - 32) / 1.8 + 273.15
      end
    when 'K'
      case scale_s
      when 'C'
        # puts 'K into cels'
        temperature -= 273.15
      when 'F'
        # puts 'K into F'
        temperature = 1.8 * (temperature - 273.15) + 32
      when 'K'
        # puts 'K into K'
        temperature += 0
      end
    end
  end
end

obj = Converter.new
# puts obj.isValidTemperature?('12')
# obj.convert
puts obj.transfToScale('C', 'F', 50)
