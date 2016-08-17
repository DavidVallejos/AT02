def file
	puts "Introduce a name of the file"
	fName = gets.chomp
	puts "Introduce a extencion"
	fName = fName + gets.chomp
	file = File.open(fName, 'a+')
	#file.truncate(0)

	puts "How many lines do you wanna add"
	cant = gets.chomp.to_i

	cant.times do |index|
		puts "Introduce the line #{index + 1}"
		file.write(gets)
		#file.write('\n')
	end

	file.close

	file = File.open(fName)
	puts file.read
end

file