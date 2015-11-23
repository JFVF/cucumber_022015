=begin
Add a method that is going to ask for a username :
Need to be write with lowercase letter (a-z), number (0-9), an underscore
Add a method that is going to ask for a password:
Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 charcters
Add a method that is going to ask for email
Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)
=end


class Expression

  def username
    puts "enter the user name..."
    expression = gets.chomp.to_s
    if expression =~ /[a-z0-9_]/
      puts "The user name is ok"
    else
      puts "the user name doesn't meet the requiriments...."
    end 
  end
  def password
    puts "enter the Password..."
    expression = gets.chomp.to_s
    if expression =~ /^[a-z0-9A-Z]{8,16}$/

      puts "The password is ok"
    else
      puts "the password doesn't meet the requiriments...."
    end 
  end

  def email
    puts "enter the email..."
    expression = gets.chomp.to_s
    if expression =~ /[a-z0-9A-Z]+@[a-z]+\.com(\.[a-z]{2}|)?/

      puts "The email is ok"
    else
      puts "the email doesn't meet the requiriments...."
    end 
  end
end

#instance the class and call the methods..

exp = Expression.new
exp.username
exp.password
exp.email

