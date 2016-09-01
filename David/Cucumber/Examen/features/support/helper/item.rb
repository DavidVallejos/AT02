module Item
	
	def Item.load
		@Item = ["pato", "ganso", "burro", "perro"]
	end

	def Item.is_item_exist(item,array)
		value = false
		array.length.times do |index|
			if array[index] == item
				value = true
			end
		end
		return value
	end

	def Item.exist_on_array?(user,array)

	end
end