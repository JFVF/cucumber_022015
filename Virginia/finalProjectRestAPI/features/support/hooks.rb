
Before('@Projects') do
  puts " I am running a the Project feature"
end

Before('@getAllProjects') do |scenario|
  puts " I am running a scenario to get all projects: #{scenario.name}"
end

Before('@createProject') do |scenario|
  puts " I am running a scenario to create a project: #{scenario.name}"
end

Before('@deleteAProject') do |scenario|
  puts " I am running a scenario to delete a project: #{scenario.name}"
end


Before('@getAllProjects', '@deleteAProject') do 
  puts " Running scenario 1 and 3"
end

Before('@createProject', '@deleteAProject') do 
  puts  " Running scenario 2 and 3"
end

After('@getAllProjects') do |scenario|
  puts " I finished running a scenario to get all projects: #{scenario.name}"
end

After('@createProject') do |scenario|
  puts " I finished running a scenario to create a project: #{scenario.name}"
end

After('@deleteAProject') do |scenario|
  puts " I finished running a scenario to delete a project: #{scenario.name}"
end

