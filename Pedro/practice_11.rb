class Customer
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   def display_details
      yield @cust_id, @cust_name, @cust_addr
    end
end

# Create Objects
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details do |c1, c2, c3|
   puts "Customer id #{c1}"
   puts "Customer name #{c2}"
   puts "Customer address #{c3}"
end

#cust2.display_details()
