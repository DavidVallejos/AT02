class MyCar

	attr_reader :model, :year
	attr_accessor :color, :current_speed

	def initialize(year, model)
		@year = year
		@model = model
		@current_speed = 0
	end
	def speed_up(number)
		@current_speed = 0
		@current_speed += number 
     	puts "You accelerate to  #{number} K/h." 

	end

	def break
		@current_speed -= @current_speed 
     	puts "You break your car #{@current_speed}"
	end

	def shut_off
		@current_speed = 0 
     	puts "Car is Off #{@current_speed}"
	end

	def change_color
		puts "Introduzca el Color"
		@color = gets.chomp
		puts "Su nuevo color de auto es: #{@color}"
	end
end

newCar = MyCar.new(2016, "Pajero")
newCar.speed_up(25)
newCar.break
newCar.shut_off
newCar.change_color
puts "The year of your car is: #{newCar.year}"