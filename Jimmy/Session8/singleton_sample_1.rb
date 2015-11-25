#Singleton style 1

require 'singleton'  
 class Base  
  include Singleton  
 	def initialize
         @value= 0
 	end
 	def any
         @value= 10
 	end
 	def some
         @value
 	end
 end  

b2 = Base.instance  
p b2.some # Output => 0
p b2.object_id

b1 = Base.instance  
p b1.any # Output => 10  
p b2.object_id

b3 = Base.instance  
p b3.some # Output => 10 
p b2.object_id