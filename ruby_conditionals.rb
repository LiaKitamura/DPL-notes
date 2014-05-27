#  Conditonals :

#this conditional is looking just for yes or no

if bacon_is_cooked
	serve_bacon
end

if my_age >= 20
	puts 'Gonna drink some beer this weekend!'
end

if your_age < 60
	puts "i probably want to party with you"
end

if your_age == my_age
	puts "we are the same age"
end

# != : not equal to. called a bang

puts "lets grab lunch" unless you_already_ate




# CASE :

grade = 'A'

case grade
when 'A'
	puts 'YAY! ice cream for you'
when 'B'
	puts 'something'
when 'C'
	puts 'something'
when 'D'
	puts 'something'
when 'F'
	puts 'something'
else
	puts 'something else'
end


case doomsday
when 'zombie apocalypse'
	puts 'yikes'
when 'zombie jesus'
when 'earthquake'
end





#    WHILE :

while nemesis_still_lost
	puts 'keep swimming'
	puts 'did you find nemo?'
	answer = gets.chomp.downcase
   if answer == 'yes' || answer =='yup' || answer == 'yeah'
	nemo_is_still_lost = false
	puts 'we found him!'
   end
end



sun_is_up = true

while sun_is_up
	puts 'do stuff'
	if Time.now.hour > 7
		sun_is_up = false
	end
end



#   METHODS :

#define a name.

#define a method called grab_food

def grab_food
	puts 'grabbing some food'
	puts 'and it’s good!'
end

 grab_food   #<——calling the method. now I can just call it like i would puts.

#defined grab_food in the global scope. it is accessible in the global scope
#the stuff in the method doesn’t actually get ran unless you call the method. since ruby reads things top down
#the method call must come AFTER defining the method.

#local variables have the smallest scope.

def grab_food(food, drink) # <——-this is called an argument (food, drink)
	puts 'grabbing some #{food}'
	puts 'drinking some #{drink}'
end

grab_food(“sushi”,  “sake”) # <——— has two arguments. if there are two arguments you must supply two arguments. cannot just do grab_food(“sushi”)



#   array of hashes -
#both keys food and drink are symbols. (uses : ) EX: food:  ,  drink:

meals = [
	{food: 'pizza', drink: 'beer'},
	{food: 'sushi', drink: 'sake'},
	{food: 'pasta', drink: 'wine'}
]

#    iterate over array -

meals.each do | meal |
	grab_food(meal[:food], meal[:drink])  # <——since key is inside hash us [] and is also a symbol use :food
end



@meals = []   #  <——-instance variable. using it both outside and inside methods. makes a larger scope

def grab_food(food,drink)
	puts 'grabbing some #{food}'
	puts 'drinking some #{drink}'
end

def add_meal
	puts 'Please enter in a food'
	food = gets.chomp
	puts “Please enter in a drink”
	drink = gets.chomp

	dinner = {}
	dinner[:food] = food
	dinner[:drink] = drink
	@meals << dinner
end

puts “Enter in a dinner? [Y] or [N]”
answer = gets.chomp

while answer.upcase == “Y”
	add_meal
	puts 'Enter in another dinner? [Y] or [N]'
	answer = gets.chomp
end

@meals.each do | meal |
	grab_food(meal[:food], meal[:drink])
end




#    CLASS :

#  classes must start with a Capital letter for the beginning of each word.

#  Don't forget the      Capital Capital Capital !!!!!!!!!!!!!!!

#  anything that starts with a capital letter is a constant. a class constant can never change.
#  A constant is the opposite of a variable.
#  a variable can change so the opposite of variable constant does not change.
#  class is kind of like a blueprint. each CrazyAnimal can run, eat and sleep but they don't do it exactly the same
#  each new one will be an instance or the CrazyAnimal

#  EX: Pi is a constant. Pi never ever ever changes. ever!

class CrazyAnimal
	def run
	end
	def eat
	end
	def sleep
	end
  class Human < CrazyAnimal
    # the < is called inheritance. inheriting traits from a parent object.
    # in this case Human is inheriting from the  class CrazyAnimal
    def play_computer_games
      #Human can do what CrazyAnimal can but CrazyAnimal cannot do what Humans can
    end
end


class Parent
end

class Child < Parent
  #Child inherits from Parent class
end

class Boat
end

class Sail < Boat
  # Sail inherits from Boat class
end

#  attr = attribute
#  we can define an attribute with symbol
#  short hand for creating methods for you

class Chair
  # attr_writer asigns a value - but cannot be changed
  attr_writer :color, :size, :arms, :material, :name, :brand

  # attr_reader retrieves/returns a value - also cannot be changed
  attr_reader :color, :size, :arms, :material, :name, :brand

  # attr_accessor is both attr_writer and reader - can be changed
  attr_accessor :color, :size, :arms, :material, :name, :brand
end

class Chair
  #attr_accessor :color, :size, :arms, :material, :name, :brand

  # Reader method - returns a value
  def color
    @color
  end

  # Writer method - Sets a value
  def color=(new_color) #<---- = sign means same as variable. means assignment.
    # writer method - assigns new value to that @instance variable
    @color = new_color
  end
end

# when you have reader method that is an attr of an object
  #that reader method will return the value of instance variable of the same name



class Animal
  #  instantiation - means  to create an instance of a new object

  def initialize
    #  this method gets called every time we call .new on a class.
      #EX : Animal.new
  end

  def  eat
    puts 'eating food'
  end

  def run
    puts 'running around'
  end
end

#  there are only two kinds of methods. instance and class methods
#  @instance method - only can call on an instance of a class. kind of like the clone of the class
    # EX :
#  Class methods- run directly on the class itself
    # EX : Sandwhich.new


class Human
  # attr_accessor sets a variable
  attr_accessor :hair_color, :eye_color, :skin_color, :sex

  #  using initialize sets up defaults
  def initialize
    @hair_color = "black"
    @eye_color = "green"
    @skin_color = "Pale and gooey"
    @sex = "female"
  end

=begin
  if you use attr_accessor you do not need to use a reader or writer method
  # Reader instance Method
  def skin_color
    @skin_color
  end

  #  Writer instance Method
  def skin_color=(new_skin_color)  # <--local variable scope
    @skin_color = new_skin_color # <-- by assigning it a instance variable it is available in the
 end                                                      # scope of the instance of the class. in this case Human

 # instance method. this method with a ? will always return true or false
 def old_enough?

 end
=end
 end
#  assigning a new color to the class of Human and instance of baby
baby.skin_color = "olive"

# if you do just att_reader you can only read the value you cannot access and change it
# same with attr_writer. you cannot change it.

#  actions and attributes. inherit something

class Internet
  attr_accessor :speed, :company, :brand

  def initialize
    @speed = "slow"
    @company = "century link"
    @brand = "Cisco"
  end

end

class Computer < Internet
#  class Computer inherits from Internet. Computer can open web_page but Internet cannot.
  def open_webpage

  end
end

#all of these are INSTANCE methods
class Human

  def die!
  end

  def name=(new_name)
  end

  def old_enough_to_vote?
  end
end



# CLASS METHODS

class Human

  #this is a class method
  #self is ruby key word to reference ones self or current object you are in. which is Human
  def self.evolve
  end

  #this is the same as the above code. but usually referenced the above way
  def Human.evolve
  end
end



# we are in the class human

class Human
  attr_accessor :sex

  # in the class Human we are creating an instance of Human,  boy
  def self.create_boy
    # since i'm inside of the class method i can use the class method of new
    baby = new
    baby.sex = "male"
    baby # this has to be the last thing evaluated
  end

  def self.create_girl
    baby = new
    baby.sex = "female"
    baby # this has to be the last thing evaluated
  end

end

#this will only create instance of Human, a boy in the baby variable
baby = Human.create_boy

#class methods are called on the class itself

#you can put anything inside a method
