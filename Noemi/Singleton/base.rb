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

 b1 = Base.instance  
 p b1.any # Output => 10  
 b2 = Base.instance  
 p b2.some # Output => 10 

