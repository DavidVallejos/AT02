# Method that calculate a age of a person

puts "Introduce Name: "
$name = gets.chomp
puts "Introduce your year of born: "
$date = gets.chomp.to_i
def person
	puts "Your name: #{$name}"
	yield($date)
	puts "You are: #{$age}"
end

person do |date|
	$age = 2016 - $date
	puts "Age calculate on block"
end