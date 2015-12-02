#ruby control statements practice

class PeopleRegistrator
	def initialize (nPeople)
		@numPeople = nPeople
		@peopleHash = Hash.new
	end

	def registerPeople
		$i = 0
		puts "Registering people...."
		while $i < @numPeople
			print "Enter the ID: "
			id = gets.chomp

			print "Enter the Name: "
			name = gets.chomp

			@peopleHash.store(id,name)

			$i +=1
		end
	end

	def transformName
		puts "Transforming the names to UPPER CASE...."

		#changing to uppercase
		@peopleHash.each_with_index do |(key,value),index|
			puts "Position: #{index} is the person:#{value.upcase}"

		end

		puts "Done..."

		return @peopleHash.values.map{|value| value.upcase}
		
	end

	def sayGoodBye (arrPeople)
		arrPeople.each {|n| puts "good bye #{n}"}
	end

end

print "Enter the number of people to be registered:"
numPeople = gets.chomp.to_i

pRegistrator = PeopleRegistrator.new(numPeople)

pRegistrator.registerPeople
puts ""
people = pRegistrator.transformName
puts "Printing an array of people names: "

pRegistrator.sayGoodBye people

