require './input'
require './2practice'

# Final class
class Calculate
  def calculate
    obj = Input.new
    comp = Computing.new
    p comp.valid_file?('ruby.csv')
    comp.computing_operation(obj.choose_operation, 'ruby.csv')
  end
end

obj = Calculate.new
p obj.calculate
