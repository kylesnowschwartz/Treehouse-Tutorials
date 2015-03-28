#create simple class called BankAccount
class BankAccount
  def initialize(name)
    @name = name
    @transactions = []
  end

#in our deposit method, we're going to use an options hash.
#The options hash will have a default value that will let us add a memo to our deposit
#conditionally assign the memo to the phrase "regular deposit"
#add on to the transations
  def deposit (amount, options={})
    options[:memo] ||= 'Regular deposit.'
    @transactions.push({:amount => amount, :memo => options[:memo]})
  end
end

#instantiate our bank account
bank_account = BankAccount.new("Kyle")

#call the deposite method and pass in an amount.
#will just add default memo if we don't pass in a memo
bank_account.deposit(100)
bank_account.deposit(200, {:memo => "this was a gift."})

#show it
puts bank_account.inspect

#each time the amount and memo symbols are not recreated, references same symbol in memory. we can use a symbol to define a method.