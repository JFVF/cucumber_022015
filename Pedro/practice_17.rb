str = "cat and dog"
if str =~ /cat/
	puts "There's a cat here somewhere"
end

str = 'abdafga'
if str =~ /^[a-z0-9_-]{3,16}$/
	puts 'Excelent'
end


