# Q-21 Add exception handling for negative numbers in the factorial program.
# [input]
# -5
# [output]
# Negative number entered

num = ARGV[0].to_i
if num < 0
  raise RuntimeError , " Negative number entered "
elsif num == 0
  puts 1
else
  puts fact=(1..num).inject(:*)
end
