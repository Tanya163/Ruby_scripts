# Q-6 Define a class named 'Vehicle' consisting of 'name','price' and methods for initializing 
# and showing contents(overwrite to_s). The 'price' of Vehicle may change over time. 
# Now create a subclass 'Bike' having 'dealer' and percent_price_increase and method to show its content. 
# Initialize a Bike class object with certain values. Define a method price_increase which will increase the price. 
# Your program should accept command line input in this format: BikeName Price Dealer PercentPriceIncrease. 
# Ex: BajajDiscover 58000 BaggaLink 12

class Vehicle

  attr_accessor :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price.to_f
  end
end
class Bike < Vehicle

  attr_accessor :dealer, :percent_price_increase

  def initialize(name, price, dealer, percent_price_increase)
    super(name, price)
    @dealer = dealer
    @percent_price_increase = percent_price_increase.to_f
  end
  def price_increase 
    @price = @price + @price * (@percent_price_increase/100)
  end
  def to_s
    "Bike Name: #{@name}\nBike Price: #{@price}\nBike Dealer: #{@dealer}\n\n
    After #{@percent_price_increase} % hike in price:\nBike Name: #{@name}\n
    Bike Price: #{self.price_increase}\nBike Dealer: #{@dealer}"
  end
end

input = ARGV
bike_name = input[0]
price = input[1]
dealer = input[2]
percent_price_increase = input[3]
bike = Bike.new(bike_name, price, dealer, percent_price_increase)
puts bike
