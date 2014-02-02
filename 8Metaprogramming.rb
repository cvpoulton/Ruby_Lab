class Class

   def attr_accessor_with_history(attr_name)

      attr_name = attr_name.to_s       # make sure it's a string
      attr_reader attr_name            # create the attribute's getter
      attr_reader attr_name+"_history" # create bar_history getter

      class_eval %Q"
         def #{attr_name}=(value)
             
            if @#{attr_name}_history == nil # If first time calling setter of attr_name
               @#{attr_name}_history = [nil] # Make attr_name_history be an array with first element as nil (no reason for nil other than description of problem)
            end
    			
            @#{attr_name} = value # Set attr_name
            @#{attr_name}_history << value # Add new attr_name value to attr_name_history
                
         end
         "
         
   end

end


#### Examples ####
class Foo
   attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
print f.bar_history # [nil,1,2]
print "\n" 
f = Foo.new
f.bar = 4
print f.bar_history # [nil, 4]
print "\n"
f = Foo.new
f.bar = 3
f.bar = :wowzo
f.bar = 'boo!'
print f.bar_history # [nil, 3 :wowzo, 'boo!']
print "\n"
