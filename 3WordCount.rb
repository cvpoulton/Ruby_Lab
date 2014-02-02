def count_words(string)
    
   array = string.gsub(/[^A-Za-z0-9_\s]/,"").downcase.split # Remove non-word characters (but not whitespace), down case everything, split by whitespace

   output = Hash.new
   
   array.each do |word| 
      if output.keys.include? word 
         output.merge!({word => output[word]+1}) # If in hash then add 1 to value
      else
         output.merge!({word => 1}) # If not in hash then add and make value 1
      end
   end

   return output

end

#### Examples ####
puts count_words("A man, a plan, a canal -- Panama") # {"a"=>3, "man"=>1, "plan"=>1, "canal"=>1, "panama"=>1}
puts count_words("Doo bee doo bee doo") # {"doo"=>3, "bee"=>2}
puts count_words(" Look at\tall   this\nwhitespace! LOOK AT IT") # {"look"=>2, "at"=>2, "all"=>1, "this"=>1, "whitespace"=>1, "it"=>1}
puts count_words("ThIs WoRkS wElL. tHiS wOrKs GrEaT!") # {"this"=>2, "works"=>2, "well"=>1, "great"=>1}
