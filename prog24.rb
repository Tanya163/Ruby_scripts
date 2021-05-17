# Q-24 Implement a reverse iteration function for Array such that I should be able to do this
# [2,4,6,8].reverse_iterate { |i| print "#{i} "}
# It would print 8 6 4 2
# Note: Do not use any existing iterator for this.
# [input]
# "[2,4,6,8]"
# [output]
# 8 6 4 2

class Array
  def reverse_iterate
    self.reverse!
    for element in self
      yield element
    end
    puts
  end
end
input_arr = gets.chomp.delete('["]').split(',')
input_arr.reverse_iterate { |i| print "#{i}" " " }
