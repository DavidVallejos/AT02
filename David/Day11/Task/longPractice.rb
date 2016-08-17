class Long
	attr_writer :cant
	attr_reader :hPerson

	def register

		compare = false
		puts "Introduce a numbers of members in a list"
		@cant = gets.chomp.to_i
		@hPerson = {}

		@cant.times do |id, name|
			begin
				puts "Introduce ID"
				id = gets.chomp.to_i

				if id >= 1 && id <= 100
					compare = true
				else
					puts "Incorrect values"
				end
			end while !compare

			compare =  false

			begin
				
				puts "Introduce Name"
				value = gets.chomp
				
				if (value =~ /[a-z]{1, 8}/) == nil
					compare = true
				else
					puts "Incorrect values"
				end
			end while !compare
			@hPerson.store id, name
		end
	end

	def selectID val

		#aUserID = []
		aUserID = @hPerson.select{|id, name| id.to_s =~ /^[#{val}$]/}
		aUserID = aUserID.keys
		return aUserID
	end

	def selectName val
		#aUserName = []
		aUserName = @hPerson.select{|id, name| name.to_s =~ /^[#{val}$]/}
		aUserName = aUserName.values
		return aUserName
	end

	def method_case

		aKey = @hPerson.keys

		case aKey.each{|id| id.to_i}
		when 1..25 then puts "#{name} belong Group 1"
		when 26..50 then puts "#{name} belong Group 2"
		when 51..75 then puts "#{name} belong Group 3"
		when 76..100 then puts "#{name} belong Group 4"	
		end

	end

	def method_print
		p selectID(@hPerson.keys)
		p selectName(@hPerson.values)
	end

end

long = Long.new

long.register
puts "What ID do you wanna search"
pushID = gets.chomp
long.selectID(pushID)

puts "Put a letter for search"
pushLeter = gets.chomp
long.selectID(pushLeter)

long.method_case
long.method_print
