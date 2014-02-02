class CartesianProduct
   include Enumerable
	
   def initialize(listA,listB)
      product = [];
		
      listA.each do |a|
         listB.each do |b|
            product << [a,b]
         end
      end
      
      @product = product
   end

   def each()
      @product.each {|x| yield x} # Yield one element at a time
   end
   
end	

#### Examples ####
c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect} # [:a, 4] \n [:a, 5] \n [:b, 4] \n [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect} # prints nothing

