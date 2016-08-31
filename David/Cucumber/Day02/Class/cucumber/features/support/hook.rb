Before('~@normal', '~@outline')  do |scenario|
  puts " Let is Go scenario: #{scenario.name}"
end

After('~@normal', '~@outline')  do |scenario|
   if scenario.failed?
    puts  "Faile #{scenario.exception.message}" 
   else
   	 puts "Bye Bye it Passed"
  end
end

Before do
	Users.load_users
end