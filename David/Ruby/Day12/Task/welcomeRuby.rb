require 'singleton'

class Welcome
	include Singleton

	attr_writer :name, :message
	attr_reader :count
	attr_accessor :last, :hash

	def initialize
		@message = "Welcome to the city"
		@last = 0
		@count = 0
		@hash = {}
	end

	def add_visitor
		validator = false

	begin
		puts "Do you introduce a visitor?"
		puts "Put 1 if yes and 2 if no"
		resp =  gets.chomp.to_i
		
		if resp == 1
			@count += 1
			puts "Put a name"
			@name = gets.chomp
			save_visitor(@name, @message)
		else
			validator = true
		end

	end while !validator
		@last = @name + " " + @message
	end

	def save_visitor name, message
		@hash.store name, message
	end

	def print
		p @hash
		p @last
	end
end

#w = Welcome.new
w =  Welcome.instance
w.add_visitor
w.print