# procs-lambdas.rb / closures

# how to create procs and procs-lambdas
  ############    USE IRB    ##########
    #call class name and . and new to substantiate a new class
    #for a proc or lambda we also need to pass in a block
    #procs and lambas are blocks assigned to variables

my_proc = Proc.new {} #or
my_proc = proc {}

#call it
my_proc.call

#to do something, pass code inside the block.
my_proc = proc { puts "hello world" }

#lambda is a type of proc. create:
my_lambda = lambda {} #or
my_lambda = -> {}

#can't assign variables to keywords in ruby, hence the "my"

#lets try to use these to print out my name

my_proc = proc { |name| puts "hello, #{name}"}
my_proc.call "Kyle"

#Hello, Kyle#

#we could do my_proc.call("Kyle") but () are optional in all ruby methods. Syntactic Sugar baby

my_lambda = lambda { |name| puts "hello, #{name}"}
my_lambda.call "Kyle"

#one big difference between procs and lambdas, is that when you create a lambda and give it an argument, that argument becomes required. So have to pass in an argument ( the "    ")

#another big difference is what happens when you return from calling them. below example: PROCS only return from INSIDE THE PROC. a LAMBDA will RETURN THE LAST LINE.

def return_from_proc
  variable = proc { return "returning from proc inside method" }
  variable.call
  return "returning from proc as last line from method"
end

def return_from_lambda
  variable = lambda { return "returning from lambda inside method" }
  variable.call
  return "returning from lambda as last line from method"
end

puts return_from_proc
puts return_from_lambda


#######using classes with procs and lambdas######

class Paper
  def initialize(&block)
    yield self if block_given?
  end

  def set_variable
    return Proc.new do |kind, val|
      [kind, val].join(": ")
    end
  end

  def title(value)
    @title = set_variable.call "TITLE", value
  end

  def heading(value)
    @heading = set_variable.call "HEADING", value
  end

  def body(value)
    @body = set_variable.call "BODY", value
  end

  def display
    puts @title
    puts "--------------"

    puts @heading
    puts "--------------"

    puts @body
    puts "--------------"
  end
end

paper = Paper.new do |p|
  p.title "My awesome paper"
  p.heading "This is my paper"
  p.body "The entire contents of my paper would go here"
end

paper.display