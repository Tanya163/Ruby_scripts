# Q-25 Sales Tax Problem: You have to write a program in Ruby which would 
# calculate the sales tax on the items according to the following conditions:
# a. Flat 10 % sales tax is applicable on all items except for book, food and medicine
# b. Additional Import Duty of 5 % is applicable on all imported items without any exceptions
# The input to the program would be in the following format: 
# Name of the product: Chocolates
# Imported?: yes
# Exempted from sales tax? Yes
# Price: 120
# Do you want to add more items to your list(y/n): y
# Name of the product: Potato Chips
# Imported?: no
# Exempted from sales tax?: yes
# Price: 100
# Do you want to add more items to your list(y/n): y
# Name of the product: Perfume
# Imported?: yes
# Exempted from sales tax? No
# Price: 150
# Do you want to add more items to your list(y/n): n
# You have to generate a list that would display the list in a nice format 
# and the grand total should be rounded to the nearest integer.

class List

  attr_accessor :product_name, :price, :imported, :exempted
  @@grand_total = 0

  def initialize(product_name, price, imported, exempted)
    @product_name = product_name
    @price = price
    @imported = imported
    @exempted = exempted
  end

  def total_price
    if self.imported == "yes" && self.exempted == "no"
      self.price += self.price * 0.1 + self.price * 0.05
      @@grand_total += self.price
    elsif self.imported == "yes" && self.exempted == "yes"
      self.price += self.price * 0.05
      @@grand_total += self.price
    elsif self.imported == "no" && self.exempted == "no"
      self.price += self.price * 0.1
      @@grand_total += self.price
    else
      self.price = self.price
      @@grand_total += self.price
    end
  end

  def self.grand_total
    return @@grand_total
  end

end

hash = Hash.new 
key = 0       
loop do
  key += 1
  puts "Name of the product:"
  product_name = gets.chomp
  puts "Imported?:"
  imported = gets.chomp.downcase
  puts "Exempted from sales tax?:"
  exempted = gets.chomp.downcase
  puts "Price:"
  price = gets.chomp.to_i
  list = List.new(product_name, price, imported, exempted)
  hash[key] = list
  puts "Do you want to add more items to your list(y/n):"
  add_more = gets.chomp
  if add_more != 'y'
    break
  end
end

for i in 1..hash.length
  hash[i].total_price
  print "#{hash[i].product_name}: #{hash[i].price}\n"
end
puts "Grand Total = #{List.grand_total}"
