Before('@normal') do |scenario|
  puts "I'm running a normal scenario: #{scenario.name}"
end

Before('@outline') do |scenario|
  puts "I'm running a outline scenario: #{scenario.name}"
end

After('@outline') do |scenario|
   puts "I finished running the outline scenario: #{scenario.name}"
end

After('@normal') do |scenario|
   puts "I finished running the normal scenario: #{scenario.name}"
end

After('@normal,@outline') do
	puts "CUSTUMER SEARCH TEST"	
end

Before('~@normal', '@outline') do
	puts "SEARCHING..."
end