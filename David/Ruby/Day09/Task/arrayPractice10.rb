class Mix_Array

	def beta_array
		aNumber = []
		puts "How many values do you want?"
		cant = gets.chomp.to_i
		cant.times do
			puts "Introduce a number:"
			value = gets.chomp.to_i
			aNumber.push(value)
		end
		aLeter = []
		cant.times do
			puts "Introduce a leters:"
			value = gets.chomp.to_s
			aLeter.push(value)
		end
		aMix = []
		cant.times do
			puts "Introduce numbers and leters:"
			value = gets.chomp
			#value = value.to_i if value.to_i == 0 : value
			aMix.push(value)
		end
		return aNumber, aLeter, aMix
	end

	def alpha_array(arguArray1, arguArray2)

		print "Elements in common of tow arrays "
		print arguArray1 & arguArray2
		puts
		print "Pop element of Array1 = " 
		p a1 = arguArray1.pop
		print "Pop element of Array2 = "
		p a2 = arguArray2.pop
		#puts "First element of two arrays #{arguArray1.pop + arguArray2.pop}"
		print "Shift element of Array1 = "
		p b1 = arguArray1.shift
		print "Shift element of Array2 = "
		p b2 = arguArray2.shift
		#puts "Last element of two arrays #{arguArray1.shift + arguArray2.shift}"
	end
end

def gama_array(arguArray1, arguArray2)
	aBoth = []
	aBoth.push(arguArray1.first, arguArray2.last)
	# puts "First array #{arguArray1} -- Second array #{arguArray2} -- Both #{aBoth}"
	return aBoth
end

def delta_array(gama)
	puts "First element of numberA and Last element of leterA "
	p gama
end

arrayClass = Mix_Array.new


numberA, leterA, MixA = arrayClass.beta_array
p numberA
p leterA
p MixA
arrayClass.alpha_array(leterA, MixA)

puts "Los arrays numberA y leterA: "
p numberA
p leterA
delta_array(gama_array(numberA, leterA))