class Item

	attr_reader:quantity
	attr_accessor:item_name
	#attr_writer:item_name
	#attr_reader:item_name

	def initialize(quantity)
		#@item_name = item_name
		@quantity = quantity		
	end

	def print_mensaje
		puts "You have #{@quantity}: #{@item_name}"
	end
	# El attribut reader "attr_reader" sustituye el metodo GETTER
	#def item_name
	#	@item_name
	#end
end

item = Item.new(1)
item.item_name = "radio"
item.print_mensaje
#puts item.item_name
#puts item.quanity