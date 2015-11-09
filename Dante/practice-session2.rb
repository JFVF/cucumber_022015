
puts "what is your name"
#input1 = gets.chomp
input1="hi"
puts "hi #{input1} how are .."

#chomp vs strip
puts "\tSome Test".chomp(' Test') 
puts "\tSome Test\r\n".chomp
puts "\r\tSome Test\r\n".chomp
puts "\r\tSome Test\r\n".chomp
puts "\tRobert Martin\r\n".strip 


#Managing numbers   to_i
var1 = "new value"
var2 = 20
result = var1 * var2
puts result
resul2 = "new value2".to_i * 2
puts resul2

#Managing numbers  to_i
puts "****************"
puts "Managing numbers  to_i"

print "Give me a number: " 
number = gets.chomp.to_i 
type1 = "32".to_i
type2 = "string with 3".to_i
type3 = "4 with string".to_i
type4 = "only string".to_i
type5 = "only 5 string".to_i

puts type1
puts type2
puts type3
puts type4
puts type5

puts "A bigger number is #{type1*100}."
puts "A bigger number is #{type2*100}."
puts "A bigger number is #{type3*100}."
puts "A bigger number is #{type4*100}."


#Managing numbers  to_f
puts "****************"
puts "Managing numbers  to_f"

type6 = "32.0".to_f
type7 = "string with 3.3".to_f
type8 = "4.32 with string".to_f
type9 = "only string".to_f
type10 = "only 5.32 string".to_f

puts type6
puts type7
puts type8
puts type9
puts type10

puts "A bigger number is #{type6*10}."
puts "A bigger number is #{type7*10}."
puts "A bigger number is #{type8*10}."
puts "A bigger number is #{type9*10}."
puts "A bigger number is #{type10*10}."

#managing strings to_s
puts "****************"
puts "Managing strings  to_s"

puts 1.to_s
varAux = "new"
puts varAux.to_s


#functions
puts "****************"
puts "functions"


def test(parameter)
  puts parameter
end
valueUser = gets
test(valueUser)
test valueUser

def person_age (name, age)
	puts "hi #{name.upcase}"
	puts "your #{age} in hours is #{age.to_i*365*24}"
end

person_age("a", 22)
person_age "hi", 2

puts "*****************"
puts "Return values from a function"


def convertFahrenheit(celsius)
	((9* celsius.to_f ) /5) + 32
end

def convertCelsios(fahrenheit)
	(5*(fahrenheit.to_f - 32))/9
end

puts "enter a celsius value"
varFar=gets
puts varFar
puts convertFahrenheit(varFar)
puts convertCelsios(104.5)

#Ruby Optional argument values
puts "****************"
puts "Ruby Optional argument values"

def count(a=1,b=2,c=a+b)
  puts "#{a}, #{b}, #{c}"
end

puts count
puts count 4
puts count 4, 5
puts count 4, 6, 3

