def palindrome?(string)

   return string.gsub(/\W/,"").downcase  == string.gsub(/\W/,"").downcase.reverse # Remove non-word characters, down case everything, compare to reverse

end

#### Examples ####
puts palindrome?("A man, a plan, a canal -- Panama") # true
puts palindrome?("Madam, I'm Adam!") # true
puts palindrome?("Abracadabra") # false
puts palindrome?("Bob: \"Did Anna peep?\" Anna: \"Did Bob?\"") # true
puts palindrome?("") # true
puts palindrome?("12321") # true
puts palindrome?("This is false") # false

