#3. Print operator cases

#Artihmetic operators
var1 = 2 + 22
var2 = var1 - 10
var3 = var1 * var2
var4 = var3 / var2
var5 = var4 % var1 ** var2
puts var1, var2, var3, var4, var5

#Comparison and logical operators
puts "var1 > var2 or var1 < var2 #{var1 > var2 or var1 < var2}"
puts "var1 > var2 and var1 < var2 #{var1 > var2 and var1 < var2}"
puts "var3 <=> var4 #{var3 <=> var4}"
puts "var3 === 10 #{var3 === 10}"

leter = "Hello"
leter2 = "World"

puts "var5 .eql? var1 #{var3 .eql? var1}"
puts "var4 .equal? leter #{var4 .equal? leter}"
puts "leter .equal? leter #{leter .equal? leter}"

#Assignment operators
puts "Asignando operador var1 += var2: #{var1 += var2}"
puts "Asignando operador var2 -= var1: #{var2 -= var1}"
puts "Asignando operador var3 *= var4: #{var3 *= var4}"
puts "Asignando operador var4 /= var3: #{var4 /= var3}"
puts "Asignando operadores (+ - / *) var1 += var2 -= var3 *= var4 /= var5: #{var1 += var2 -= var3 *= var4 /= var5}"
puts "Modular de var1 %= 10 = #{var1 %= 10}"
puts "Exponencial de var5 **= 4 = #{var5 **= 4}"