Conditonals :

this conditional if looking just for yes or no

if bacon_is_cooked
	serve_bacon
end

false -
nil -

if my_age >= 20
	puts “Gonna drink some beer this weekend!”
end

if your_age < 60
	puts “i probably want to party with you”
end

if your_age == my_age
	puts “we are the same age”
end

!= : not equal to. a bang

puts “lets grab lunch” unless you_already_ate

CASE :

grade = ‘A’

case grade
when ‘A’
	puts “YAY! ice cream for you”
when ‘B’
	puts “something”
when ‘C’
	puts “something”
when ‘D’
	puts “something”
when ‘F’
	puts “something”
else
	puts “something else”
end


case doomsday
when ‘zombie apocalypse’
	puts “yikes”
when ‘zombie jesus’
when ‘earthquake’
end

WHILE :

while nemesis_still_lost
	puts “keep swimming”
	puts “did you find nemo?”
	answer = gets.chomp.downcase
   if answer == “yes” || answer ==“yup” || answer ==“yeah”
	nemo_is_still_lost = false
	puts “we found him!”
   end
end



sun_is_up = true

while sun_is_up
	puts “do stuff”
	if Time.now.hour > 7
		sun_is_up = false
	end
end



METHODS :
define name.

define a method called grab_food

def grab_food
	puts “grabbing some food”
	puts “and it’s good!”
end

 grab_food   <——calling the method. now I can just call it like i would puts.

defined grab_food in the global scope. it is accessible in the global scope
the stuff in the method doesn’t actually get ran unless you call the method. since ruby reads things top down
the method call must come AFTER defining the method.

making it more dynamic

local variables have the smallest scope.

def grab_food(food, drink) <——-this is called an argument (food)
	puts “grabbing some #{food}”
	puts “drinking some #{drink}”
end

grab_food(“sushi”,  “sake”) <——— has two arguments. if there are two arguments you must supple two 									 arguments. cannot just do grab_food(“sushi”)



array of hashes -
both keys food and drink are symbols. (uses : ) EX: food:  ,  drink:

meals = [
	{food: ‘pizza, drink: ‘beer’},
	{food: ’sushi’, drink: ’sake’},
	{food: ‘pasta’, drink: ‘wine’}
]

iterate over array -

meals.each do | meal |
	grab_food(meal[:food], meal[:drink])  <——since key is inside hash us [] and is also a symbol use :food
end



@meals = []    <——-instance variable. using it both outside and inside methods. makes a larger scope

def grab_food(food,drink)
	puts “grabbing some #{food}”
	puts “drinking some #{drink}”
end

def add_meal
	puts “Please enter in a food”
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
	puts “Enter in another dinner? [Y] or [N]”
	answer = gets.chomp
end

@meals.each do | meal |
	grab_food(meal[:food], meal[:drink])
end
