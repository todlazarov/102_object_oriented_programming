# If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end 

  def model
    # method logic
  end
end

# What would happen if I called the methods like shown below?

tv = Television.new
# This line will create a new instance of the Television class

tv.manufacturer
# This will raise an error because manufacturer is a class variable and not an instance one

tv.model
# This line will execute the method model for the tv instance

Television.manufacturer
# This line will execute the class method manufacturer

Television.model
# This will raise an error because model is an instance method and not a class one