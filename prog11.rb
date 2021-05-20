# Q-11 Print Pascal's triangle using 'yield'.
# Eg: pascal(6) gives:
# 1 
# 1 1 
# 1 2 1 
# 1 3 3 1 
# 1 4 6 4 1 
# 1 5 10 10 5 1

def p_triangle(n)
  (0..n).each{|i|
    list = [1]
    element = 1
    k = 1
    (0..i-1).step(1){|index|
      element = element * (i-k+1)/k
      list.push element 
      k += 1
    }
    yield(list)
  }
end
n = ARGV[0].to_i
p_triangle(n){ |list| list.each do
|ele| print "#{ele} "
end
puts }
