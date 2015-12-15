require 'Singleton'

class User
	include Singleton
	attr_accessor:user_hash
	attr_accessor:total_priced_hash

	def initialize
		@user_hash = Hash.new
		@total_priced_hash = Hash.new

		fill_user_hash
		fill_total_priced_hash
	end

	def fill_user_hash
		@user_hash.store(001,'Jimmy')
		@user_hash.store(002,'Agapito')
		@user_hash.store(003,'Josenildo')

	end

	def fill_total_priced_hash
		@total_priced_hash.store(001,1000)
		@total_priced_hash.store(002,500)
		@total_priced_hash.store(003,150)
	end
end


Before('@priced_list_outline,@priced_list') do |scenario|
	@user = User.instance		
	puts "CUSTOMER SEARCH TEST"

	if(scenario.name.include?"Outline") then
		puts "SEARCHIN….."
		puts "I am running an outline scenario"
	else
		puts "I am running a normal scenario"
	end
end

After('@priced_list_outline,@priced_list') do |scenario|
	if(scenario.name.include?("Outline")) then
		puts "I finished running the outline scenario"
	else
		puts "I finished running a normal scenario"
	end
end

Given(/^I have a list with the USERS with ID$/) do 
  
end

And(/^I have a list with the TotalPriced for the ID$/) do 
  
end

When(/^I search for an user by (\d+)$/) do |id|
  
end

Then(/^the (\d+), (\w+) and (\d+) is returned$/) do |id, user, total_priced|
	id = id.to_i
	total_priced = total_priced.to_i

	actual_user = @user.user_hash[id]
	actual_total_priced = @user.total_priced_hash[id]

	expect(actual_total_priced).to eq total_priced
end	

