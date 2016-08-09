def customer_id(name, id)
	mensaje = id > 100 ? "Thanks to be our customer" : "Thanks"
	#name = name.upcase
	puts "Hi #{name.upcase}"
	puts "You are our customer #{id} #{mensaje}"
end

customer_id("Fulaneto", 12)
customer_id "Menganito", 322