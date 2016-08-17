require 'singleton'

class Person
	include Singleton

	attr_writer :id, :name
	attr_accessor :opcion, :array

	def initialize
		@id = nil
		@name = nil
	end

	def registro
		file = File.open('execution.log', 'a+')

		compare = false
		@hPerson = {}

		@cant = cantidad

		@cant.times do

			#Usuario
			begin
				puts "Introduce Name"
				@name = gets.chomp
				
				if (@name =~ /[a-z0-9]{1, 11}/) == nil
					compare = true
				else
					puts "Incorrect values"
				end
			end while !compare
			compare = false
			#ID
			begin
				puts "Introduce ID"
				@id = gets.chomp.to_i
				if @id >= 1 && @id <= 100
					compare = true
				else
					puts "Incorrect values"
				end
			end while !compare

			compare =  false
			@hPerson.store @id, @name
			file.write(@hPerson)
		end
	end

	def cantidad
		validador = false
		begin
			puts "Introdusca la cantidad"
			@cant = gets.chomp.to_i
			if @cant <= 15 && @cant >= 3
				validador = true
			else
				puts "Introdusca la cantidad correcta"
		end while !validador
		return @cant
	end

	def tipo_conversion
		puts "Elija el tipo de conversion"
		puts "Put 1 From Milimeters to centimeters"
		puts "Put 2 From centimeters to meters"
		puts "Put 3 From meters to Kilometers"
		@option = gets.chomp.to_i
		if @option == 1
			return 1
		elsif @option == 2
			return 2
		else
			return 3		
		end
	end

	def calculator
		val = tipo_conversion
			case val
				when val == 1 then
				puts "Introduzca cantidad en Milimetros:"
				num = gets.chomp.to_i
				puts "#{num} en centimetros es: #{milimetro_centimetro num}"
				when val == 2 then
				puts "Introduzca cantidad en Centimetros:"
				num = gets.chomp.to_i
				puts "#{num} en metros es: #{centimetro_metro num}"
				when val == 3 then
				puts "Introduzca cantidad en Metros:"
				num = gets.chomp.to_i
				puts "#{num} en kilometros es: #{metro_kilometro num}"
			end
		end
	end

	def cambiar

		cont = @hPerson.lenght
		per = @hPerson.values
		@array = []

		cont.times do |index|
			puts "#{per[index]} Quieres cambiar la conversion?"
			opcion = gets.chomp
			if option == "YES"
				calculator
			else
				puts "Bye"
				@array = per[index]
			end
		end
		return @array
	end

	def print_sin
		p @array
		file.write(@array)
	end
end

person = Person.instance
person.registro
person.calculador
person.print_sin