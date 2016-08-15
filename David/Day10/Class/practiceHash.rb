
class Mix_Hash
	attr_reader :alpha_hash

	def builder_hash
		puts "How many values do you want?"
		cant = gets.chomp.to_i
		@alpha_hash = {}
		cant.times do
			puts "Introduce a Key: "
			key = gets.chomp
			puts "Introduce a Value: "
			value = gets.chomp
			@alpha_hash.store key, value
		end
	end

	def print_key(h)
		p h.keys
	end

	def print_value(alpha_hash)
		p alpha_hash.values
	end

	def print_hash(alpha_hash)
		p alpha_hash
	end

	def key_from_user(alpha_hash)
		puts "A key that you wanna see"
		k = gets.chomp
		p alpha_hash.has_key? (k)
	end

	def value_from_user(alpha_hash)
		puts "A value that wanna see"
		v = gets.chomp
		p alpha_hash.has_value? (v)
	end
end

mix_hash = Mix_Hash.new
mix_hash.builder_hash
h = mix_hash.alpha_hash
mix_hash.print_key(h)
mix_hash.print_value(h)
mix_hash.print_hash(h)
mix_hash.key_from_user(h)
mix_hash.value_from_user(h)