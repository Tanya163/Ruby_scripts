# Use string methods to reverse the words arrangement in a sentence. 
# Eg: "An apple a day keeps the doctor away" -> "away doctor the keeps day a apple An"

puts "please provide an input"
str=gets.chomp
arr=str.split
puts arr.reverse!.join(' ')
