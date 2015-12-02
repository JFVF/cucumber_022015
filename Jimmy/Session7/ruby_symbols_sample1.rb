#ruby_symbols_Sample_1

my_hash_1 = {
  :a => "Artur",
  :l => "Linda",
  :r => "Ryan",
  :z => "Zach"
}

my_hash_2 = {
  a: "Artur",
  l: "Linda",
  r: "Ryan",
  z:  "Zach"
}

my_hash_3 = {}
my_hash_3['a'] = 'ohhh'

puts "printing the hash 1"
p my_hash_1

puts "printing the hash 2"
p my_hash_2

n = my_hash_2.a
p n

p my_hash_3['a']



