# We have an Oracle class and a RoadTrip class that inherits from the Oracle class.

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

# What is the result of the following:

trip = RoadTrip.new
puts trip.predict_the_future

# In this case the RoadTrip class will inherit the predict_the_future method from Oracle
# But it will use its own choices method, which will result in a string 
# that looks like "You will <one of the choices from the RoadTrip choices method>".