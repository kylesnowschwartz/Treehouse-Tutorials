modules.rb

############ create a module ##################
#put a "mascot" inside treehouse module
  #mascots are a constant inside the module. all upper case.
  #can only be used within module
module Treehouse
  MASCOT = "Mike The Frog"
end


#### we can put classes inside modules, called namespacing, to seperate parts of your program ###

module Treehouse
  MASCOT = "Mike The Frog"

  class Frog
    attr_accessor :name
  end

end

#### now we can load this file and in IRB do the following:

# to use, we need :: to get at the class inside the module
#create new variable called mike
mike = Treehouse::Frog.new
mike.name = "Mike the Frog"
mike.inspect
#class is now "name spaced"


#################################################

###### using include and extend to modify classes with modules #######

######extend keyword - makes methods defined in a module available to a class extended by module


# first create a simple class
class Hello
  def initialize(name)
    @name = name
  end
end

# second create a module that wil say hello for us
module SayHello
  def say_hello
    puts "Hello #{@name}"
  end
end

# INSTANTIATE an instance of the say hello class
hello = Hello.new("Jason")

# USE EXTEND KEYWORD to extend the say_hello instance with the sayhello module
hello.extend SayHello

#call the say hello method on our object
hello.say_hello

#we've augmented our hello instance with our SayHello module
#Whereas before when we created it we didn't have the say_hello method, once we extend it with the SayHello module, we get everything inside of the module.
#say_hello method has attr_accessor

######includ keyword######
# include makes methods available to class instances