Before do
	$flights = Flight.load
end

Before do
	Item.load
	$item_list = Item.load
end

After('@positive') do
	puts "RUNNING POSITIVE CASES"
end

After('@negative') do
	puts "RUNNING NEGATIVE CASES"
end