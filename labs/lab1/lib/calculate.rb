load 'input.rb'
load 'converter.rb'

# require './input' # for checking program(not tests)
# require './converter' # for checking program(not tests)

class Calculate
  def calculate
    obj = Input.new
    conv = Converter.new
    obj.set_variables
    p conv.convert(obj)
  end
end

obj = Calculate.new
obj.calculate
# ob = Converter.new
# ob1 = Input.new
# ob1.temperature = gets.chomp!
# p ob.valid_temperature?(ob1.temperature)