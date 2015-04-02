# # create the method. print out that we're adding 2 numbers together and then return the sum.
# def add(a, b)
#   puts "adding #{a} and #{b}: "
#   return a + b
# end

# #call the method
# puts add(2, 3)
# puts add(10, 50)
# puts add(3,8)


# ##########SIMPLE METHODS############
# #saying hello
# def hello(name1, name2)
#   puts "Hello #{name1}"
#   puts "Hello #{name2}"
# end

# hello("Kyle", "Linh")

###class methods###
class BankAccount


  ###class << self (lets you remove the selfs)##

  attr_reader :balance
  attr_accessor :transations

  def self.create_for(first_name, last_name)
    @accounts ||= []
    @accounts << BankAccount.new(first_name, last_name)
  end

  def self.find_for(first_name, last_name)
    @accounts.find{|acount| account.full_name == "#{@first_name} #{@last_name}"}
  end

  def initialize(first_name, last_name)
    @balance = 0
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def reset!
    @balance = 0
  end

end


bank_account = BankAccount.new("Kyle", "Schwartz")
puts bank_account.inspect