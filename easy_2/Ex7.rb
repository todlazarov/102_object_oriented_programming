# If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# Explain what the @@cats_count variable does and how it works. What code would you need to write to test your theory?

# Every time a new instance of the Cat class is created the @@cats_count variable is incremented by 1. 
# Which esentially turns the variable into a counter.
# We can test it with the following code.

spike = Cat.new('Black')
ash = Cat.new('Grey')

# We would expect the following line to return the number 2.
puts Cat.cats_count