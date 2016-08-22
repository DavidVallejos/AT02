class Age
	attr_accessor :name, :age

	def hour
		puts "Put your name"
		@name = gets.chomp
		puts "Put your age"
		@age = gets.chomp.to_i

		if @age <= 35
			puts "#{@name} your year in hours is : #{@age*24*60}"
		end

		return val = @age <= 35 ? @age : "Your age cannot be calculate"
	end

	def case(value)
		case value
		when 0 .. 5 then puts "You are a baby"
		when 6 .. 12 then puts "You are a child"
		when 13 .. 21 then puts "You are young"
		when 22 .. 35 then puts "You are adult"
		else puts value
		end
	end
end

classAge = Age.new


a = classAge.hour
classAge.case(a)