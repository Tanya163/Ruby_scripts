#Q-1 Count the occurrences of various alphabet letters in an input string 
#and store it in hash. Your ruby program should accept a string as an 
#argument and display the hash as an output.
# [input]
# "Hello World"
# [output]
# {"H"=>1, "e"=>1, "l"=>3, "o"=>2, "W"=>1, "r"=>1, "d"=>1} 

puts "Enter string"
new_str=gets
puts new_str.scan(/[[:alpha:]]/i).each_with_object(Hash.new(0)){|c,h| h[c]+=1}
