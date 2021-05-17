# Q-7 Overwrite the default 'to_s' method such that it inverses the case of each letter. 
# Eg: "hello WORLD".to_s -> "HELLO world". Your program should accept a string as an argument 
# and print the output on standard output.

class String
  def to_s
    self.swapcase
  end
end
puts "Please provide an input"
str = gets
puts str.to_s
