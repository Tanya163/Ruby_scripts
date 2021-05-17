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
  end

  def display
    if @f_name[0] !~ /[A-Z]/ 
      if @l_name.empty?
        raise "Firstname must start with uppercase letter and Lastname cannot be blank"
      else
        raise "Firstname must start with uppercase letter"
      end
    elsif @l_name.empty?
      raise "Lastname cannot be blank"
    else
    puts "Your name is #{@f_name} #{@l_name}"
    end
  end
end
input_name = gets.split
name = Name.new(input_name[0].to_s, input_name[1].to_s)
name.display
