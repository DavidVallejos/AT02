module Users
	
	def Users.load_users
		@custumer = {'patricio' => "123admin", 'petunio' => "123user", 'florencio' => "123client"}
	end

	def Users.get_list_of_users(hash)
		@list_user = @custumer.keys
	end

	def Users.extract_user_from_array(user,array)
		value = false
		array.length.times do |index|
			if array[index] == user
				value = true
			end
		end
		return value
	end

	def Users.exist_on_array?(user,array)

	end
end