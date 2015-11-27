module Convertion
   
   def Convertion.minutesToHours
      puts "insert minutes"
      time = gets.chomp.to_i
      puts "converted to hours = #{time/60}"
   end

   def Convertion.hoursToDays
      puts "insert hours"
      time = gets.chomp.to_i
      puts "converted to days = #{time/24}"
   end

   def Convertion.daysToMonths
      puts "insert days"
      time = gets.chomp.to_i
      puts "converted to months = #{time/30}"
   end

end