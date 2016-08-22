class Base
	def initialize
		@value= 0
 	end
 	def any
 		@value= 10
 	end
 	def some
 		@value
 	end
 end

 b1 = Base.new
 p b1.any
 b2 = Base.new
 p b2.some