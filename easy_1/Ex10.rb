# If we have the class below, what would you need to call to create a new instance of this class.

class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

baggy = new.Bag("white", "plastic")

# We have to call the new. method on the Bag class with 2 arguments.