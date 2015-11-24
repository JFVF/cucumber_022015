=begin
Author Dante 
Create a class that is going to receive :
1.The quantity of persons to register
2. One method to get the Name and ID for all the persons registered
3. One method that consider:
 for each one of the Names, change them to upper case
 print the position and the Name of each person registered 
Save the name in upper case into an array, return the array
4. One method that According the amount of persons registered say “good bye <name>” to each one until all persons are gone.
=end

class People
  @number_People=Hash[]
  def initialize numberPeople
    @number_People = numberPeople
  end

  def sayGoodbye
    i = 0
    key = @number_People.keys
    begin
       puts("goodbye person: #{@number_People[key[i]]}" )
       i +=1
    end while i < @number_People.length
  end

  def getNameUppercase
      array=[]
      @number_People.each_with_index do |(key,value),index| 
        array.push(value.upcase) 
        puts "print position for person #{index}"
      end
      array
  end
  def getNameID
    @number_People.each{|key, value| puts "ID: #{key}, Name: #{value}"}
  end


end

#speciy the hash, including ID and name for each person
persons = Hash["11","person1","12","person2", "13","person3"]
puts "************************"
puts "print the hash: "
puts "************************"
puts persons
#create the instance
peopleinfo = People.new(persons)  

#call the methods
puts "************************"
puts "get the name and the ID"
puts "************************"
peopleinfo.getNameID
puts "************************"
puts "get the names in uppercase"
puts "************************"
puts peopleinfo.getNameUppercase
puts "************************"
puts "say goodbye to each person"
puts "************************"
peopleinfo.sayGoodbye

