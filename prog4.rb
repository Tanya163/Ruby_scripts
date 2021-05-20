# Q-4 Output whether the input string is a palindrome.Add a method palindrome? in String class, 
# so that it can be called as str.palindrome? this method should return true/false. Input 
# should be passed as a command line argument. * When the string is Palindrome, the output 
# should be "Input string is a palindrome"

# * When the string is not Palindrome, the output should be "Input string is not a palindrome"
# * If no argument is passed(or blank string argument). the output should be "Please provide an input"


class String
  def palindrome?
    if self == self.reverse
      return true
    else
      return false
    end
  end
end
new_str = gets.chomp
if new_str === ""
  puts "Please provide an input"
elsif new_str.palindrome?
  puts "Input string is a palindrome"
else
  puts "Input string is not a palindrome"
end
