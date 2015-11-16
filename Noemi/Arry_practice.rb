class My_arry
  		
  def drawn_arry()
  	puts 'Give me the lenght of the arry?'
	@var_number = gets.chomp.to_i
	puts "The leght is #{@var_number}"
	ary = Array.new 
	Array.new(@var_number)   	
	for i in 1.. @var_number
		puts 'Give me a item to add to arry?'
		var_item=gets.chomp
		ary.push var_item
	end
	p ary
  end
  def print_arry(newarry)
  	puts 'Printing your arry'
  	p newarry
  	puts 'Printing your arry one by one'
  	for i in 0.. @var_number-1
  		puts newarry[i] 
  	end  	
			
  end	

end
noe_arry = My_arry.new
newarry= noe_arry.drawn_arry
noe_arry.print_arry(newarry)
