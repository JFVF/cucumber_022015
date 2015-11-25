=begin

author: Dante
  
=end

module Conversions

  def minutesToHours minutes
      puts "#{minutes} minutes represents #{minutes.to_f/60} hrs"
  end

  def hoursToDays hours
      puts "#{hours} hours represents #{hours.to_f / 24} days"
  end

  def DaysToMonths days
      puts "#{days} days represents #{days.to_f / 31} months"
      
  end

end

require 'singleton'

class Registration

  include Singleton
  include Conversions
  attr_accessor :users
  attr_reader :number
  def initialize 
    @users={}
    @name = nil
    @id = nil
    @number = 0
  end

  def askNameID

    puts "please enter a name"
    expression = gets.chomp.to_s

    if expression =~ /[a-z0-9]{1,11}/
      if expression == expression.downcase
        @name = expression
        puts "please enter the ID"
        @id = gets.chomp.to_s
        return @id, @name
      else
        puts "the name doesn't meet the requiriments...., the user cannot be added"
      end
    else
      puts "the name doesn't meet the requiriments...., the user cannot be added"
    end 

  end
  def setnumerUsers 
    puts "please a number of students"
    number = gets.chomp.to_i
    if number <= 15 && number >=3
        @number = number
    else
      puts "the number cannot be more than 15 or less than 3"
    end
  end

  def askForConvertion
    puts "Options"
    puts "a) from minutes to hours"
    puts "b) from hours to days"
    puts "c) from days to months"
    puts "please enter...  the option... for example...  b "
    value = gets.chomp.to_s
  end
  def evaluteVar variable

      if variable == "a"
        puts "please enter the value for minutes: "
        value = gets.chomp.to_i
        minutesToHours value
      elsif variable == "b"
        puts "please enter the value for hours: "
        value = gets.chomp.to_i
        hoursToDays value
      elsif variable == "c"
        puts "please enter the value for days: "
        value = gets.chomp.to_i
        DaysToMonths value
      else
        puts "the selected option doesn't exist"
      end
     
  end
end


re = Registration.instance
re.setnumerUsers
$i = 0
while $i < re.number  do
  id, name = re.askNameID
  re.users.store id, name
  $i +=1
end
p re.users
re.evaluteVar re.askForConvertion

