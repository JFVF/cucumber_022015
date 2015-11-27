module Greet 
   GREAT_1 = "Hi Friend"
   GREAT_2 = "good night"
   GREAT_3 = "good afternoon"
   def Greet.greet1
      puts "#{GREAT_1}"
   end
   def Greet.greet2
      puts "#{GREAT_2}"
   end
   def Greet.greet3
      puts "#{GREAT_3}"
   end
end

module Bye 
   BYE_1 = "good bye"
   BYE_2 = "see you later"
   BYE_3 = "take care"
   def Bye.bye1
      puts "#{BYE_1}"
   end
   def Bye.bye2
      puts "#{BYE_}"
   end
   def Bye.bye3
      puts "#{BYE_3}"
   end
end