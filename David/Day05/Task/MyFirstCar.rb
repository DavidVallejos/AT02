class MyCar
	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
	end

	def speed_up(number)
		@current_speed += number 
     	puts "You accelerate to  #{number} K/h." 

	end

	def break
		#@current_speed -= number 
     	puts "You break your car"
	end

	def shut_off
		@current_speed = 0 
     	puts "Car is Off #{@current_speed}"
	end
end

newCar = MyCar.new(1657,"Negro","98")
newCar.speed_up(25)
newCar.break
newCar.shut_off