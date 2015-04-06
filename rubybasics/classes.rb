#create a new class

class Name
  def title
    "Mr."
  end

  def first_name
    "Kyle"
  end

  def middle_name
    ""
  end

  def last_name
    "Snow Schwartz"
  end
end

name = Name.new #make sure to instantiate teh class
puts name.title #now call the instance with the method
puts name.first_name
puts name.middle_name
puts name.last_name

#### Make the name and title attributes VARIABLES#####

class Name
  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def title
    @title
  end

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end
end

name = Name.new("Mr.", "Kyle", "Snow", "Schwartz")
puts  name.title + " " +
      name.first_name + " " +
      name.middle_name + " " +
      name.last_name + "."


#####SHORTCUT###### attr_reader attribute reader

class Name
  attr_reader :first_name, :middle_name, :last_name
  #attr_writer :title
  attr_accessor :title #both reader and writer

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  # our attr_writer
  #def title=(new_title)
  #   @title = new_title
  # end

end

name = Name.new("Mr.", "Kyle", "Snow", "Schwartz")
puts  name.title + " " +
      name.first_name + " " +
      name.middle_name + " " +
      name.last_name + "."

puts "Title: #{name.title}"
name.title = "Dr."
puts "Title: #{name.title}"

######PUTTING IN METHODS

class Name
  attr_accessor :title, :first_name, :middle_name, :last_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end

  def full_name_with_title
    @title + " " + full_name()
  end

  def to_s #define your own to_s method so it prints nicely
    full_name_with_title
  end

end


name = Name.new("Mr.", "Kyle", "Snow", "Schwartz")
puts  name.full_name_with_title
puts name.inspect
puts name

