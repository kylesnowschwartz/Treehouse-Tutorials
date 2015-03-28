# in order to use dates and times library, we have to require them in IRB
#in IRB
require 'date'
require 'time'

#create a date
#
date = Date.new
puts date.to_s

date = Date.new(2015, 3, 28)

#strf time method lets you format dates when you print them out. ruby documentation date library

puts date.strftime("%m/%d/%Y")
#formats it.

date.mday
#which day of the month? or date.day

date.friday?
#returns true if the date falls on a friday

date.month
#numerical representation of the month

date.wday
#returns a number representating day of the week. 0 is sunday. 1 is monday.

date.yday
#get the particular day of the year.

date.year

#### we might want to parse it from a string ####

date2 = Date.parse("2015/2/1")

######## TIME #########

time = Time.new
#gets computers time