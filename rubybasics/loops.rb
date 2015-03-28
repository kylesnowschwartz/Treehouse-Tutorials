########## while loops ##########
i = 0
string = "Hello World"

while i <=10
  string = "Hello World #{i}"
  puts "i is now #{i}"
  i += 1
end

puts "the final value of i is #{i}"
puts "the final value of i is hello world #{i}"

########## until loops ##########
#1
i = 0

until i > 10 do
  puts "i is now #{i}"
  i += 1
end

puts "The final value of i is #{i}"

#2
name = ""

until name == "KYLE" do
  print "What is your name? "
  name = gets.chomp.upcase
  puts "Hello, #{name}"
end

########## for loops ##########
#1
array = [1, 2, 3, 4, 5, 6]

for i in array do
  puts "i is #{i}"
end

puts "outside of the loop i is #{i}"

#2 range loop
for i in 1..10 do
  puts "i is #{i}"
end

#3 loop inside loop
for i in 1..5 do
  for j in 1..5 do
    puts "i is #{i}, j is #{j}"
  end
end

#4 %w notation makes each item a string, so we get back an array of strings, then for each iteration an array item will be assigned to a variable animal
for animal in %w(dog cat horse goat snake) do
  puts "the current animal is #{animal}"
end

########## control flow inside of  loops ##########

#skips cat
for animal in %w(dog cat horse goat snake) do
  next if animal == "cat"
  puts "the current animal is #{animal}"
end

#breaks the loop entirely at cat, only see dog
for animal in %w(dog cat horse goat snake) do
  break if animal == "cat"
  puts "the current animal is #{animal}"
end

name = ""

loop do
  print "Enter your name: "
  name = gets.chomp.upcase
  if name == "KYLE"
    puts "Hi #{name}, we've been expecting you"
    break
  end
end

#retry and redo reexecute parts of a loop. Redo only repeats current iteration, retry repeats from the start.

animals = %w(dog cat horse goat snake)
count = 0

for animal in animals do
  puts "the current animal is #{animal}"
  break if count == 10
  count += 1
  redo if animal == 'horse'
end