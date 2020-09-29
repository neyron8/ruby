class Input
  def self.set_temperature
    puts 'Введите температуру '
    @temperature = gets.chomp!
  end

  def self.set_scale
    puts 'Введите название шкалы (С, K, F) '
    @scale = gets.chomp!
  end
end
