def user_name
	compare = false
	begin
		puts "Introduce a user name: "
		user = gets.chomp

		if user =~ /a-z|0-9|\_/
			compare = true
		else
			puts "Incorrect values"
		end
	end while !compare
end

def password
	compare = false
	begin
		puts "Introduce your password: "
		pass = gets.chomp

		if pass =~ /[a-zA-Z0-9].{3,16}/
			compare = true
		else
			puts "Incorrect values"
		end
	end while compare == false
end

def email
	compare = false
	begin
		puts "Introduce your email"
		email = gets.chomp

		if email =~ /([a-zA-Z0-9]*)(\@)([a-z]*)(\.)([com]{3})|(\.)([a-z]{2})/
			compare = true
		else
			puts "Incorrect values"
		end
		
	end while compare == false
end

user_name
password
email