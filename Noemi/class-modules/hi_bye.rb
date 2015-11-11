#Date 11 11 2015
#Move the modules to another file and include them adding the line 
module My_Hi 
 
   def My_Hi.say_Hi
      puts "Hi Friend"
      puts "good night"
      puts "good afternoont"
   end
end

module My_bye
   def My_bye.say_bye   
      puts "good bye"
      puts "see you later"
      puts "take care"
   end
end
My_Hi.say_Hi
My_bye.say_bye 