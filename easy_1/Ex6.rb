# What could we add to the class below to access the instance variable @volume?

class Cube
  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end
end

# We can add a get method in order to accesss the volume variables like this
# def get_volume
#   @volume
# end

# We can also add attr_reader :volume 
# which will give us the ability to read and access the volume variable.

asd = Cube.new(10)
puts asd.volume