# Rewrite the factorial method using ranges. Your script should take a number from the command line 
# and output the result on standard output
# [input]
# 0
# [output]
# 1

num = ARGV[0].to_i
if num == 0
  puts 1
else
  puts fact = (1..num).inject(:*)
end
