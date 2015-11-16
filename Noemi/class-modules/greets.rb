#require_relative  'greets_modules.rb'
require  './greets_modules'
=begin
Write a module that print different type of greets (Hi Friend, good night, good afternoon, etc ) 
Write another module that print different ways to say bye (good bye, see you later, take care, etc)
Include both modules in a class
Print the different greeters using an instance of the class and calling to the module methods.
Move the modules to another file and include them adding the line :
	 require <filename>
=end

class Sample
include My_Hi
include My_bye

   def s
   end
end

samp=Sample.new
samp.say_Hi
samp.say_bye 

