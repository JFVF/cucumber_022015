module Hello
   def Hello.first
      puts "Hello there"
   end
   def Hello.second
      puts "Hi buddy"
   end
   def Hello.third
      puts "Good morning"
   end
   def Hello.fourth
      puts "Good afternoon"
   end
   def Hello.fifth
      puts "Good evening"
   end
   def Hello.sixth
      puts "Gutten Tag"
   end
end
puts Hello.first
Hello.second
Hello.third
Hello.fourth
Hello.fifth
Hello.sixth

module Bye
   def Bye.bye
      puts "Bye"
   end
   def Bye.later
      puts "See you later"
   end
   def Bye.there
      puts "See you there"
   end
   def Bye.take
      puts "take care"
   end
   def Bye.good
      puts "good bye"
   end
   
end
puts Bye.bye
Bye.later
Bye.take
Bye.there
Bye.good


class Greets
	include Hello
	include Bye
end

test = Greets.new
puts test.bye
puts Hello.first
