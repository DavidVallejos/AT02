def travel(name, price, destiny = "Cbba")
	price *= 6.58
end

puts "Introduce your name:"
name = gets.chomp
puts "Introduce your price: "
price = gets.chomp.to_f
puts "Introduce your destiny: "
destiny = gets.chomp

puts "#{travel name , price}"