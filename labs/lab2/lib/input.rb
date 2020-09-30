# Input class
class Input
  def self.choose_operation
    @operation = gets.chomp!
    @operation
  end
end
