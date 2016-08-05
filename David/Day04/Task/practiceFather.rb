# Create a class father and 3 class child

class Father
	@@money = 500
	puts "I have 500 of my salary"
	def self.my_money
		@@money
	end
end

class Fulano < Father
	puts "Child one needs 50 for my fuel"
	@@money -= 50
end

class Mengano < Father
	puts "Child two needs 100 for my candies"
	@@money -= 100
end

class Sultano < Father
	puts "Child three needs 200 for my pokeballs"
	@@money -= 200
end

puts "Now I have: #{Father.my_money}"