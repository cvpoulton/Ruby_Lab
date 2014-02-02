def combine_anagrams(words)
    
   output = []
   output << [words[0]] # Add first anagram group

   for word in words[1..-1] # loop over words (not the first)
      for thisGroup in 0..output.length # Loop over anagram groups, have extra index in case we need to add new group
    
         if thisGroup == output.length # Reached end of groups
         output << [word] # Add group
                    
         elsif word.downcase.chars.sort.join == output[thisGroup][0].downcase.chars.sort.join # Compare sorted lower cased strings
            output[thisGroup] << word # Add word to group
            break # Stop looping over available groups (don't want double groups)
         end

      end
   end
    
    return output
end


#### Examples ####
print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']) #[["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]]
print "\n"
print combine_anagrams(['wow','WOW','oww','now']) # [["wow", "WOW", "oww"], ["now"]]
print "\n"
