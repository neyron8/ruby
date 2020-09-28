load 'input.rb'
load 'computing.rb'

# Final class
class Calculate
  def calculate
    obj = Input.new
    comp = Computing.new
    comp.computing_operation(obj.choose_operation)
  end
end

 obj = Calculate.new
 p obj.calculate
# name = File.expand_path(File.dirname(__FILE__)) + '/ruby.csv' 
# p name

