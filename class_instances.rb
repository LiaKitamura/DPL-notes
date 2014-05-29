#class and instances and stuff that is confusing

class Dogs              #class of Dogs

  def run          #instance method
                      # and instance methods can only be used on a copy of your class.
  end

end


                                            #we have made a copy of class Dogs called copy_dogs
copy_dogs = Dogs.new        #instance of the class Dogs.
                                            #this is like a copy of the class Dogs

Dogs.run                      #<--cannot do this because Dogs is a class.
                                    # and run is a instance method. and instance methods can only be
                                    # run on a instance (copy) of a class
copy_dogs.run              #<--this is the correct way of using an instance method on an instance
                                    # of a class 
