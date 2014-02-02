class Numeric

   @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0} # Multiply to get into dollars, divide to go from dollars to currency
 
   def method_missing(method_id)
        
      singular_currency = method_id.to_s.gsub( /s$/, '') # Take off s at the end of string if there

      if @@currencies.has_key?(singular_currency) #
         return self * @@currencies[singular_currency]  # Turn into dollars
      end
    
   end
 
   def in(sym)
   
      singular_currency = sym.to_s.gsub( /s$/, '') # Convert to string, take off s at the end of string if there
        
      if @@currencies.has_key?(singular_currency)
         return self / @@currencies[singular_currency]  # Assume already in dollars, turn into currency
      end  
        
   end

end


#### Examples ####
puts 1.rupees.in(:euros) # 0.014705882352941176
puts 1.rupee.in(:euros) # 0.014705882352941176
puts 1.rupees.in(:euro) # 0.014705882352941176
puts 1.rupee.in(:euro) # 0.014705882352941176
puts 1.euros.in(:rupee).rupees.in(:dollars).dollars.in(:euro) # 1.0
