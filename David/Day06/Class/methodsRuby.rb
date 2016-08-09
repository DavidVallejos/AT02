def celcius_fahrenheit(celcius)
	((9 * celcius) / 5) + 32
end

def fahrenheit_celcius(fahrenheit)
	result = (5 * (fahrenheit - 32)) / 9
end

puts "Insert Fahrenheit"
puts "Fahrenheit to Celcius #{fahrenheit_celcius(gets.chomp.to_i)}"
puts "Insert Celius"
puts "Celcius to Fahrenheit #{celcius_fahrenheit(gets.chomp.to_f)}"