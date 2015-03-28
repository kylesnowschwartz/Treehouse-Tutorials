#1 create a method, tell ruby to expect a block with &
def say_hello(&block)
  puts "Hello, world"
  block.call
end

#2 call a block with block.call inside in the block. any code that's inside the curly braces below will be evaulated inside the method above.

#3 create a block by putting some code inside {} next to the method name
say_hello { puts "hello again" }

#3.1 another way to call a block besides {}. but {} have a higher priority than do.
say_hello do
  puts "Hello again"
end

##########how to work with blocks##########

#4 block_given? keyword returns true if a block is passed into a method

def say_hello(&block)
  puts "Hello, world"
  if block_given?
    block.call
  else
    puts "no block was given"
  end
end

say_hello do
  puts "Hello again"
end

#5 return values from blocks to the calling method. last line will be return value

def say_hello(&block)
  puts "Hello, world"
  name = block.call
  puts "You entered #{name} as your name"
end

#6 other statements inside block are executed, but the last value is what gets returned to the method of the block
say_hello do
  puts "this is inside of the say_helloblock."
  "Kyle"
end

########print header followed by text##########
def header(&block)
  puts "this is our header"
  block.call
  puts "this is our footer"
rescue
  puts "this is where we would rescue an error."
ensure
  puts "I am inside the ensure block."
end

header do
  puts "this is the body of the block"
  raise "this is an error"
end

# ensure keyword ensures a piece of code is run regardless of exceptions in a block. use ensure block if you think an exception will be raised
# raise keyword raises an error in the code

#########special blocks, begin and end############
puts "this is the first line of our ruby program."

BEGIN { puts "inside of the BEGIN block" }
END {puts "Inside of the END block" }

#########Yield Method#########
# will break out of a block, run code, then return. You can run this code any number of times with yeild. yield twice will run it twice.
#the keyword yield will interupt the code, to run what is in the

def say_hello(&block)
  puts "Hello, world"
  yield
  puts "I said hello"
end

say_hello {puts "I am inside of the say_hello block."
}

#new method, using yield with iterator variable
def show_numbers(numbers=10)
  i = 0
  while 0 < 10
    yield i
    i += 1
  end
end

# below we're calling the block. yeilding the variable i. we can assign that to a variable |number| is going to have the value of i inside of the show_numbers method. this increments

show_numbers do |number|
  puts "the current number is #{number}."
  number = number * 2
  puts "the current number multiplied by 2 is #{number}."
end

#block variable scope- only affects the numbers within the block, not outside.

######using blocks in everyday ruby code##########

#we have an array with the each method, which does something to each of the objects, in this case the number 1-5, inside of the array. we're going to multiply them by 2. but it does not change the original array.

array = [1, 2, 3, 4, 5]

puts array.inspect

array.each do |number|
  puts "the number is #{number}."
  number *= 2
end

puts array.inspect