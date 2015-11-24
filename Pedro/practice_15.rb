
salaries = {
	larry: 7,
	jimmy: 6,
	pedro: 1,
}

my_salary = salaries.select { |name, salary| salary < 2 }
puts my_salary

some_hash = {}

my_salary = salaries.select do |name, salary|
	some_hash[name] = (salary * 571) if salary < 2
end

p some_hash

some_hash.store(:ariel, 8)

p some_hash

