def array1
	a = [1,2,3,4,5,6]
	#puts "Print array #{p a}"
end

def array2(arrayArgu)
	puts "Print the first: #{arrayArgu.first}"
end

def array3(arrayArgu)
	puts "Print the last: #{arrayArgu.last}"
end

def array4(firt, second)
	puts "Intersection: #{firt & second}"
end

arr1 = array1
arr2 = [2,4,6,8,9,8]

p array1
array2(arr1)
array3(arr1)
array4(arr1,arr2)