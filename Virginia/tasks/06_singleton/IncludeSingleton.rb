 require 'singleton'  
 class Base  
  include Singleton  
  attr_accessor:hash   #set and get
    def initialize
        @user = "Guest"
        @message = "Welcome to the city"
        @visitors = 0

    end
    def any
         @value= 10
    end
     def some
         @value=20
    end
 end  

 b1 = Base.instance  
 p b1.any # Output => 10  
 b2 = Base.instance  
 p b2.some # Output => 10 
