def method_block
	result = 0
	yield
	puts "The value obtained is #{result}"
end

method_block {result = 15 * 25}

method_block do 
		result = result == 0 ? 25 + 15 : 25 * 5
		puts "I changed the value into the block"
   end

method_block {result = 15 / 25}