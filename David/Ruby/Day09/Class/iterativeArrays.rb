class Put_Array

	def array1
		puts "How many elements do you want?"
		cant = gets.chomp.to_i
		first = []
		cant.times do
			puts "Introduce value: "
			val = gets.chomp
			first.push(val)
		end
		return first
	end

	def array2(arrayArgu)
		puts arrayArgu
	end
end

array = Put_Array.new
value1 = array.array1
array.array2(value1)