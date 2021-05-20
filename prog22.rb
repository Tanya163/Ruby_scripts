# Q-22 Create a class 'Name' with two attributes firstname and lastname. Neither of them 
# can be blank and the first letter of firstname must be capital. Implement using 'raise'. 
# Try using custom Exceptions.
# [input]
# manoj sharma
# [output]
# Firstname must start with uppercase letter

class Name

  attr_accessor :f_name, :l_name

  def initialize(fname, lname)
    @f_name = fname
    @l_name = lname
    raise "Firstname must start with uppercase letter" if @f_name[0] !~ /[A-Z]/ 
    raise "Lastname cannot be blank" if @l_name.empty?
    self.display
  end
  def display
    puts "Your name is #{@f_name} #{@l_name}"
  end
end
input_name = gets.split
name = Name.new(input_name[0].to_s, input_name[1].to_s)
