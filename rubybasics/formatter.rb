
module FormatAttributes
  def formats(*attributes)
    @format_attributes = attributes
  end

  def format_attributes
    @format_attributes
  end
end

module Formatter
  def display
    self.class.format_attributes.each do |attribute|
      puts "[#{attribute.to_s.upcase}] #{send(attribute)}"
    end
  end
end

class Resume
  extend FormatAttributes
  include Formatter
  attr_accessor :name, :phone_number, :email, :experience
  formats :name, :phone_number, :email, :experience
end

#making this useful: use another class
class CV
  extend FormatAttributes
  include Formatter
  attr_accessor :name, :experience
  formats :name, :experience
end

resume = Resume.new
resume.name = "Kyle Schwartz"
resume.email = "Kyle.snowschwartz@gmail.com"
resume.phone_number = "02040658034"
resume.experience = "none"

resume.display

#same stuff for the cv class

puts "--------------"

cv = CV.new
cv.name = "Kyle Schwartz"
cv.experience = "None"

cv.display