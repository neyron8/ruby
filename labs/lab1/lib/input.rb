class Input
  def set_temperature
    puts 'Введите температуру '
    @temperature = gets.chomp!
  end

  def set_scale
    puts 'Введите название шкалы (С, K, F) '
    @scale = gets.chomp!
  end
end
