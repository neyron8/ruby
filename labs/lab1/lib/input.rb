class Input
  attr_accessor :temperature, :scale_f, :scale_s

  def set_temperature
    puts 'Введите температуру '
    @temperature = gets.chomp!
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
