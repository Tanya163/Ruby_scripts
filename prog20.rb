# Q-20 Create a class Interest that gives the user the difference in amount calculated simply and compoundedly.
# Initialise class with a block. 'p' and 't' are entered by user. Take 'r' = 10% pa.
# [input]
# 10000 2
# [output]
# Interest difference= 100.00 

class Interest
  RATE_OF_INTEREST = 0.1
  attr_accessor :principal,:time
  def initialize
    yield self
  end
  def show_diff
    print "Interest difference =" "#{ "%.2f" % (self.compound_interest-self.simple_interest)}" "\n"
  end
  private
    def simple_interest
      @principal + (@principal * RATE_OF_INTEREST * @time)
    end    
    def compound_interest
      @principal * (1+RATE_OF_INTEREST) ** @time
    end
end
input = ARGV
principal = input[0].to_f
time = input[1].to_i
Interest.new do |i|
  i.p = principal
  i.t = time
  i.show_diff
end
