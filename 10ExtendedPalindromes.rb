class String
   def palindrome?
      return self.gsub(/\W/,"").downcase  == self.gsub(/\W/,"").downcase.reverse # Remove non-word characters, down case everything, compare to reverse
   end
end


module Enumerable
   def palindrome?
      return self == self.reverse
   end
end



#### Examples ####
# Strings
puts "A man, a plan, a canal -- Panama".palindrome? # true
puts "Madam, I'm Adam!".palindrome? # true
puts "Abracadabra".palindrome? # false
puts "Bob: \"Did Anna peep?\" Anna: \"Did Bob?\"".palindrome? # true
puts "".palindrome? # true
puts "12321".palindrome? # true
puts "This is false".palindrome? # false


# Enums
puts [1,2,3,2,1].palindrome? # true
puts [1,2,3,4].palindrome? # false
puts [[1,2],3,[2,1]].palindrome? # false

