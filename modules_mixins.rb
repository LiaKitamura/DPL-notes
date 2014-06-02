#   MODULES & MIXINS


# REQUIRE :
#   taking whats built into ruby and adding them
#   the reason they aren't added as default is that the more of these libraries
#   are there, the slower the application runs. so you only load what you need.
#
#   ruby has a thing called load path it is an array of strings and each one of
#   these strings is a path to where all the files are located
#   this is an array that specifies where ruby files are located. if you do
#   this you need to say where exactly the file is located
#     $LOAD_PATH or $: for short
#
#   when you have multiple requires you need to call them according to the order
#   if you have a dependancy on the third file and load it and call it first
#   before requiring the first two it will not work. must load first two then
#   you can use the third file.


# when requiring multiple files. order is very important


# MODULES

# a module is a collection of methods
# call include on modules not class. if you see a constant with include you know
# its a module

require_relative 'lia'

me = Lia::Person.new   # <--- :: scope operator will seperate constants
# Lia is a module and Person is a Class. this is how you call it
me.name = 'Lia'
me.introduce

#  namespace : the reason we would do this is namespacing. if you had another
#  class of Person and another module or class you need to seperate the two.

# EX : me = Lia::Person.new
#       you = Human::Person.new

#  these two Person classes are different

class Person
  module Lia
    #   this is different from Human.
  end
end

class Person
  module Human
    # this is different from Lia
  end
end




# namespace or mixin
# using module as a namespace

# name of Module::Namespace

module Vehicle
  class Car

  end
end

new_car = Vehicle::Car.new

# Vehicle is the module and Car is the namespace.

module Business
  class Car

  end
end

company_car = Business::Car.new

# by namespacing this I can treat Car as separate objects



# modules as a mixin
# take this stuff and mix it with whatever you have

# mixin is something that already exist

module SaladDressing
  def flavor_explosion
    puts 'Noms in yo mouth'
  end
end

class Salad
  include SaladDressing
end

# when we istantiate Salad by including the SaladDressing module we can take #
#   whatever was included in SaladDressing
house = Salad.new
house.flavor_explosion
