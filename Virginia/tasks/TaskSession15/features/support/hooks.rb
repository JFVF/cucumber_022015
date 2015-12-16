Before('@storeInformation') do |scenario|
  puts " I am running an outline scenario: #{scenario.name}"
end

Before('@searchClients') do |scenario|
  puts " I am running a normal scenario: #{scenario.name}"
end

Before('@storeInformation', '@searchClients') do 
  puts " CUSTOMER SEARCH TEST"
end

Before('@storeInformation', '~@searchClients') do 
  puts " SEARCHIN…..: "
end

After('@storeInformation') do |scenario|
  puts " I finished running an outline scenario: #{scenario.name}"
end

After('@searchClients') do |scenario|
  puts " I finished running a normal scenario: #{scenario.name}"
end
