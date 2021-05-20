# Define a method to find all prime numbers upto n using 'step' function. Don't use Prime class
# [input]
# 20
# [output]
# [2, 3, 5, 7, 11, 13, 17, 19] 

def prime(n)
  arr = []
  (2..n).step(1).each do |value|
    is_prime = true
    (2..Math.sqrt(value)).each do |e|
      if value%e == 0
        is_prime = false
        break 
      end 
    end
    if is_prime
      arr << value
    end
  end
  puts "#{arr}"
end
num = gets.to_i
prime(num)
puts
