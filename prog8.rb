# Q-8 Define a method power() for an array. It takes an argument 'x' and returns the 
# array with elements raised to power 'x'. Try to make use of array functions. 
# Your program should accept an array and the value of power from command line. 
# input example: ruby power_array.rb "[1,2,3,4]" 2 
# output example: [1, 4, 9, 16]

class Array
  def power(x)
    arr = []
    self.each do |value , temp=x|
      final_val = 1
        while temp != 0
          temp -= 1
          final_val *= value
        end
        arr << final_val
      end
    print arr
    puts
  end
end

arr = ARGV[0]
arr = arr.slice(1...(arr.size - 1)).split(',').map(&:to_i)
num = ARGV[1].to_i
arr.power(num)
