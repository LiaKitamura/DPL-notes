# class and instances and stuff that is confusing

class Dogs              # class of Dogs
  def run              # instance method
                       # and instance methods can only be used on a copy of
  end                  # your class.
end


                          # we have made a copy of class Dogs called copy_dogs
copy_dogs = Dogs.new      # an instance of the class Dogs.


Dogs.run                  # <--cannot do this because Dogs is a class.
                          # and run is a instance method. and instance methods
                          # can only be run on a instance (copy) of a class

copy_dogs.run             # <--this is the correct way of using an instance
                          # method on an instance of a class





# Create a new file called greeter.rb to work on this exercise.
# Create a class called Greeter that is initialized with a string that is saved
# to the @greeting attribute.
class Greeter
  attr_accessor :greeting # < -- makes it so you can just use it like in car
                                # down below.
  def initialize(greeting) # (poop)
    @greeting = greeting
  end

  def string(name) # local argument (lia)
    greeting = 'hello'   # < --- local variable
    puts "#{@greeting} #{name}" # using instance var with local arugument passed
    puts "#{greeting}"   # < --- local variable being called
  end

  # def color
  #   @color
  # end              <-----this gets replaced with attr_accessor-----
  #
  # def color=(mycolor)
  #   @color =  mycolor
end

Greeter.new('poop').string('lia')

car = Greeter.new('blah') # <-- using the attr_accessor
puts car.greeting

# car.greeting = 'word'  < -- changes greeting input to word
# puts car.greeting

# car.color='puprle'     <-- if you used attr_reader and writer instead of
# puts car.color          just using the attr_accessor------

# Create a method that displays the string you initialized with to the console.
# Create an instance of the Greeter class and call the display method on it.
