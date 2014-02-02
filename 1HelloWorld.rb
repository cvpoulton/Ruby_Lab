# Part1: Hello World 

class HelloWorldClass # a class named HelloWorldClass has been created
   def initialize(name) # initialize is a class constructor which takes a parameter named name
      @name = name.capitalize
   end
   def sayHi
      puts "Hello #{@name}!" # writes text to the screen.
   end
end


hello = HelloWorldClass.new("chris") 
hello.sayHi

# all comments begin with a '#' character
