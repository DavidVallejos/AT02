class GiveInformation
	def method_information
		print "Insert your name: "
		name = gets
		print "Insert your age: "
		age = gets.chomp.to_i
		return age
	end
end

var = GiveInformation.new
age = var.method_information

class AgeInMinutes
	def method_calculate(age)
		puts "You have a: #{age * 525600} minutes"
	end
end

var2 = AgeInMinutes.new
var2.method_calculate(age)