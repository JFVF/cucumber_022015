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
   def bye
      puts "Bye"
   end
   def later
      puts "See you later"
   end
   def there
      puts "See you there"
   end
   def take
      puts "take care"
   end
   def good
      puts "good bye"
   end
   
end
puts bye
#second
#Bye.third
#Bye.fourth
#Bye.fifth


class Greets
	include Hello
	include Bye
end

test = Greets.new
puts test.bye
puts Hello.first
