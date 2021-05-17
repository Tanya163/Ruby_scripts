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
  SALES_TAX = 0.1
  IMPORT_DUTIES = 0.05
  attr_accessor :hash
  def initialize(hash)
    @hash = hash
  end
  def total_price
    final_list=Hash.new
    @hash.each do | key, value |
      if @hash[key][1] == "yes" && @hash[key][2] == "No"
        @hash[key][0] = hash[key][0] + (@hash[key][0] * SALES_TAX) + (hash[key][0] * IMPORT_DUTIES)
      elsif @hash[key][1] == "yes" && @hash[key][2] == "Yes"
        @hash[key][0] = @hash[key][0] + (hash[key][0] * IMPORT_DUTIES)
      else
        @hash[key][0] = @hash[key][0]
      end
      final_list[key] = @hash[key][0]
    end
    return final_list
  end
  def show_list_items
    final_list=self.total_price
    final_list.each do |item, price|
      puts "#{item}: #{price.to_i}" 
    end
  end
end

hash = Hash.new        
loop do
  puts "Name of the product:"
  product_name = gets.chomp
  puts "Imported?:"
  imported = gets.chomp
  puts "Exempted from sales tax?:"
  exempted = gets.chomp
  puts "Price:"
  price = gets.chomp.to_i
  hash[product_name] = [price, imported, exempted]
  puts "Do you want to add more items to your list(y/n):"
  add_more = gets.chomp
  if add_more != 'y'
    break
  end
end
list = List.new(hash)
list.show_list_items
