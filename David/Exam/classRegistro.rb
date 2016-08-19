module Convertions
	def milimetro_centimetro numero
		numero / 1000
	end

	def centimetro_metro numero
		numero / 100
	end

	def metro_kilometro numero
		numero / 100
	end
end

require 'singleton'

class Person
	include Singleton
	include Convertions

	attr_writer :id, :name
	attr_accessor :opcion, :array

	def initialize
		@id = nil
		@name = nil
		@hPerson = {}
		@file = File.open('execution.log', 'w+')
		@file.truncate(0)
	end

	def registro

		compare = false
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
		end
		@file.write("El hash de personas #{@hPerson}\n")
	end

	def cantidad
		begin
			puts "Introdusca la cantidad"
			cant = gets.chomp.to_i
		end while cant < 3 || cant > 15
		@file.write("La cantidad de usuarios #{cant}\n")
		return cant
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

	def calculador
		val = tipo_conversion
		@file.write("Tipo de conversion es #{val}\n")
			case val
				when 1 then
					puts "Introduzca cantidad en Milimetros:"
					num = gets.chomp.to_i
					puts f = "#{num} en centimetros es: #{milimetro_centimetro num}"
				when 2 then
					puts "Introduzca cantidad en Centimetros:"
					num = gets.chomp.to_i
					puts f = "#{num} en metros es: #{centimetro_metro num}"
				when 3 then
					puts "Introduzca cantidad en Metros:"
					num = gets.chomp.to_i
					puts f = "#{num} en kilometros es: #{metro_kilometro num}"
			end
			@file.write("#{f}\n")
	end

	def cambiar
		@array = []
		@hPerson.each do |key, value|
			puts f = "#{value} Quieres cambiar la conversion? SI/NO: "
			res = gets.chomp
			@file.write("#{f}\n")
			@file.write("#{res}\n")
			if(res == "SI")
				calculador
			else
				puts f = "Bye"
				@file.write("Bye\n")
				@array.push(value)
			end
		end
		return @array
	end

	def print_sin array
		@file.write("Personas que no quisieron cambiar conversion #{array}\n")
		p @array
		@file.close
	end
end

person = Person.instance
person.registro
person.calculador
person.print_sin(person.cambiar)