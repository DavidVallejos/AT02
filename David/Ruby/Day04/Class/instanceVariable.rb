class Customer
	def initialize(id, name, addr)
		@cust_id = id
		@cust_name = name
		@cust_addr = addr
	end

	def display_details
		puts "Customer id #{@cust_id}"
		puts "Customer name #{@cust_name}"
		puts "Customer addr #{@cust_addr}"
	end

	def change_name
		puts "What name do you want?"
		@cust_name = gets
	end
end

cust1 = Customer.new("1", "Ana", "Sopocachi,LP")
cust2 = Customer.new("2", "Juan", "Melchor Perez,Cbba")

cust1.change_name
cust1.display_details
cust2.display_details