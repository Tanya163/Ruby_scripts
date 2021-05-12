# Q-5 Define a class Account with three three attributes "name","account_no" & "balance". 
# Name and Balance should be set when creating an object of Account class, 
# account_number should be auto increment. This Account class must have two methods, deposit() and withdraw(). 
# Your code should take three arguments

# [input]
# Rahul:2000 Abhishek:3000 transfer:200
# [output]
# Account number: 1
# Account holder name: Rahul
# Account balance: 1800

# Account number:	 2
# Account holder name: Abhishek
# Account balance: 3200 


class Account
  attr_accessor :name, :balance 
  @@account_no=0
  def initialize(name,balance)
    @name=name
    @balance=balance
  end

  def account_num
    @@account_no+=1
  end

  def deposit(transfer_amount)
    self.balance+=transfer_amount 
  end
  def withdraw(transfer_amount)
    self.balance-=transfer_amount
  end
  def show
    puts "Account number: #{self.account_num}"
    puts "Account holder name: #{self.name}"
    puts "Account balance: #{self.balance}"
    puts
  end
end
input=ARGV
name1=input[0].to_s.split(':')[0].gsub(/\"|\[|\]/ , "")
balance1=input[0].to_s.split(':')[1].gsub(/\"|\[|\]/ , "").to_i
name2=input[1].to_s.split(':')[0].gsub(/\"|\[|\]/ , "")
balance2=input[1].to_s.split(':')[1].gsub(/\"|\[|\]/ , "").to_i
transfer_amount=input[2].to_s.split(':')[1].gsub(/\"|\[|\]/ , "").to_i
account_a=Account.new(name1,balance1)
account_a.withdraw(transfer_amount)
account_a.show
account_b=Account.new(name2,balance2)
account_b.deposit(transfer_amount)
account_b.show
