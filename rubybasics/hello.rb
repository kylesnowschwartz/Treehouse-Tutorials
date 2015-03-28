##### all this will work #####
# puts "Hello world!"
# puts "Hello world!";
# puts ("Hello world!")
# puts ("Hello world!");

##### different lines #####
# name = "Kyle Snow Schwartz"
# puts "Hello"
# puts name

##### same lines #####
# name = "kyle"
# puts "hello #{name}!"

##### asks for name, then you enter it #####
# print "Please enter your name: "
# name = gets
# puts "hello #{name}!"

#### '' vs "" ####
# '' does not interpolate
# "" does interpolate

#onto multiple lines
#can use <<-STRING textextext STRING
#STRING can actually be any text at all
name = "Kyle"
string = "Hello \nmy name is #{name} \nUp Yours!"
puts string

# \n does a new line
# \t does a tab
# \s does a space

year = 2015
puts "The year is #{year}"

future = 5
puts "in #{future} years, the year will be #{year + future}"