# Q-12 Write a method that returns the no of various lowercase, uppercase, digits and special characters 
# used in the string. Make use of Ranges.
# [input]
# "heLLo Every1"
# [output]
# Lowercase characters = 7
# Uppercase characters = 3
# Numeric characters = 1
# Special characters = 1


def cases_in_string(str)
  lc=0;uc=0;num=0;sc=0
  str.each_char do |c|
    if ('a'..'z').include?(c)
      lc+=1
    elsif ('A'..'Z').include?(c)
      uc+=1
    elsif ('1'..'9').include?(c)
      num+=1
    else
      sc+=1
    end
  end
  puts "Lowercase characters = #{lc}"
  puts "Uppercase characters = #{uc}"
  puts "Numeric characters = #{num}"
  puts "Special characters = #{sc}"
end
puts "Enter String"
str=gets.chomp
cases_in_string(str)
