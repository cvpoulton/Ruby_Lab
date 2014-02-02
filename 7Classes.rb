class Dessert

   attr_accessor(:name, :calories) # Make getters and setters for @name and @calories (could be passed as strings too)

   def initialize(name, calories)
      @name = name
      @calories = calories
   end
    
   def healthy?
      return @calories < 200
   end

   def delicious? # true for all Desserts
      return true
   end

end


class JellyBean < Dessert

   attr_accessor(:flavor) # Make getter and setter for @flavor (could be passed as string too)

   def initialize(name, calories, flavor)
      @name = name
      @calories = calories
      @flavor = flavor
   end
     
   def delicious?
      return @flavor != "black licorice"
   end

end
