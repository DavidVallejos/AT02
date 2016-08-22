def file
	puts "Introduce a name of the file"
	fName = gets.chomp
	puts "Introduce a extencion"
	fName = fName + gets.chomp
	file = File.open(fName, 'a+')

	100.times do |index|
		puts "Introduce"
		file.write(method_random)
	end

	file.close

	file = File.open(fName)
	puts file.read
end

def method_random
	string = "User_#{rand(1..100)} | " + "Pass_#{rand(1..100)} | " + date + " | " + country + "\n"
end

def date
	sDate = rand(1..12).to_s + "/" + rand(1..29).to_s + "/" + rand(1..2050).to_s
end

def country
	r =  rand(1..9)
	case r
		when 1 then city = "CBBA"
		when 2 then city = "La Paz"
		when 3 then city = "Santa Cruz"
		when 4 then city = "Beni"
		when 5 then city = "Pando"
		when 6 then city = "Tarija"
		when 7 then city = "Potosi"
		when 8 then city = "Oruro"
		when 9 then city = "Sucre"	
	end
	return city
end

file