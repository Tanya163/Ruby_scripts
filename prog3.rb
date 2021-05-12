# Q-3 Write a program to print a Fibonacci series. Your program should accept a number input 
# and output the Fibonacci series. Make use of yield in your program
# [input]
# 1000
# [output]
# 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987


puts " enter a number upto which you want to generate your fibonacci"
num=gets
num=num.to_i
def fib(num)
  a ,b=1 ,1
  while a<=num
    yield a
    a,b=b,a+b    
  end
end

fib(num){|a| print a , " " }
puts
