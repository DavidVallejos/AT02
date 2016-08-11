module Week
	FIRST_DAY = "Sunday"

	def Week.weeks_in_mounth
		puts "You have four weeks in a mounth"
	end

	def Week.weeks_in_years
		puts "You have 52 weeks in a year"
	end
end

puts Week::FIRST_DAY
Week.weeks_in_mounth
Week.weeks_in_years