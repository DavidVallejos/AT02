require 'singleton'

class Shopping
	include Singleton
	attr_writer :item_and_price, :item_and_quantity, :item_and_buy
	attr_accessor :itemBuy

	def initialize
		amount = 0
		@item_and_price = {}
		@item_and_quantity = {}
		@item_and_buy = {}
	end

	def buy_item
		puts "Item to buy:"
		@itemBuy = gets.chomp
		puts "Quantity of #{itemBuy} to buy"
		@amount = gets.chomp.to_i
		@item_and_quantity["#{@itemBuy}"] = @item_and_quantity["#{@itemBuy}"] - @amount
		price = price @itemBuy, @amount
		@item_and_buy.store(@itemBuy, price)
	end

	def price itemBuy, amount
		return (@item_and_price["#{itemBuy}"] * amount)
	end

	def instance
		puts "Introduce a item"
		item = gets.chomp
		puts "Introduce a price"
		price = gets.chomp.to_i
		@item_and_price.store(item, price)
		puts "Introduce a quantity of #{item}"
		quantity = gets.chomp.to_i
		@item_and_quantity.store(item, quantity)
	end

	def print
		p @item_and_price
		p @item_and_quantity
		p @item_and_buy

		puts "Balance of #{@item_and_quantity}"
		p @item_and_price
		puts "Quantity of product sold #{@amount}"
		puts "Price paid #{@item_and_buy["#{@itemBuy}"]}"
	end
end

shop = Shopping.instance

shop.instance
shop.buy_item
shop.print