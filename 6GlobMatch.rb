# The definition for the ? glob rule in the assignment was incorrect and not consistent with the example results. I have changed it to be the correct UNIX glob rule of matching any one character.

def glob_match(filenames, pattern)
    
   output = []
    
   filenames.each do |fileName|	
   
      if /#{pattern.gsub("*",".*").gsub("?",".")}/.match(fileName) # Make expr with #{...} construct. Convert UNIX glob pattern to Ruby RegExpr pattern with .gsub
         output << fileName # If finds match (not nil) then add file to output
      end
      
   end
    return output
end

#### Examples ####
print glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],"*part*rb?*") # ["part2.rb~", ".part3.rb.un~"]
print "\n"
print glob_match(["3r","3ra","ra","r"],"*r?") # ["3ra", "ra"]
print "\n"
