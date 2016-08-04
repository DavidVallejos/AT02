

class Calculate

	def method_area
		pedir = print "Put a number for area: "
		rad = gets.chomp.to_i
		puts "The area of circle is: #{rad * 2 * Math::PI}"		
	end
	def method_perimeter
		pedir = print "Put a number for perimeter: "
		rad = gets.chomp.to_i
		puts "The perimeter of a circle is: #{rad * rad * Math::PI}"
	end
end

varCalc = Calculate.new

varCalc.method_area
varCalc.method_perimeter