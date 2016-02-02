# You are given the following code:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

# What is the result of calling

# oracle = Oracle.new
# oracle.predict_the_future

# Calling the above command will results in a string being returned 
# It will look like this "You will <one of the choices from the choice method>"
# The last part of the string will be selected at random.