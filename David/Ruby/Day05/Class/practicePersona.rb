class Person

	attr_writer :name
	attr_reader :greet
	attr_accessor :mensaje

	def print_mensaje
		puts "#{mensaje}"
	end

	def saludo
		@greet = "Hi, "
		@mensaje = @greet + @name 
	end
end

greeting = Person.new
greeting.name = "Karime"
greeting.saludo
puts "#{greeting.mensaje}"