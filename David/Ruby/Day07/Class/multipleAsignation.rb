puts "Introduce seconds: " 
sec = gets.chomp.to_i

def calculate(second)
	minutes = second / 60
	hours = second / (60 * 60)
	return minutes, hours
end

min, h = calculate(sec)
puts "Los minutes son: #{min} y las horas: #{h}"