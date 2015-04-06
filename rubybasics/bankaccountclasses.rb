class BankAccount
  attr_reader :name

  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Begginging Balance", 0)
  end

  def credit(description, amount)
    add_transaction(description, amount)
  end

  def debit(description, amount)
    add_transaction(description, -amount)
  end

  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

  def balance
    balance = 0.0
    @transactions.each {|transaction| balance += transaction[:amount]}
    return balance
  end

  def to_s #puts always does to_s, so this is how we modify our puts so that it prints in a way we want
    "name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
    #check out documentation for sprintf method
  end

  def print_register
    puts "#{name}'s Bank Account"

    puts "-" * 40

    puts "Description".ljust(30) + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
    end

    puts "-" * 40
    puts "Balance:".ljust(30) + sprintf("%0.2f", balance).rjust(10) + "    :("
    puts "-" * 40

  end

end

bank_account = BankAccount.new("Kyle")
bank_account.credit("Paycheck", 100)
bank_account.debit("Groceries", 40)
bank_account.debit("New Macbook", 2000)
puts bank_account #check out documentation for sprintf method
puts "Register:"
bank_account.print_register