class Person
	attr_writer :cant
	attr_reader :hPerson

	def register

		puts "Cant of person"
		@cant = gets.chomp.to_i
		@hPerson = {}

		@cant.times do |id, value|
			puts "Introduce ID"
			id = gets.chomp.to_i
			puts "Introduce Name"
			value = gets.chomp
			@hPerson.store id,value
		end
	end

	def print_Person
		name = []

		@hPerson.each_with_index do |(id, value), index|
			value = value.upcase
			hPerson.each{|id, value| puts "#{id} with name: #{value}"}
			name.push(value)
		end

		return name
	end

	def say_bye(array)
		@cant.times do |index|
			puts "Good bye #{array[index]}"
		end
	end
end

person = Person.new

person.register

array = person.print_Person

person.say_bye(array)