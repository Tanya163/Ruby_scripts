# Q-2 Ask the user to enter text. Replace each vowel in the text with a '*' 
# using regular expression. Your program should accept a string as an argument 
# and output the replaced string.
# [input]
# password123 
# [output]
# p*ssw*rd123 


puts "Enter Text"
new_text=gets
puts new_text.gsub!(/[aeiou]/ , "*")
