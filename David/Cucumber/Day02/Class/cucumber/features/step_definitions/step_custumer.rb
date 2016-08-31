Given(/^Admin user is define$/) do
	expect($app_user).to_not be(nil)
	@list = Users.get_list_of_users(Users.load_users)
end

When(/^I verify (\w+) exist$/) do|user|
	value = false
	@list.length.times do |index|
		if @list[index] == user
			value = true
		end
	end
	expect(value).to be(true)
end

When(/^I verify (\w+) does not exist$/) do |user|
	value = false
	@list.length.times do |index|
		if @list[index] == user
			value = true
		end
	end
	expect(value).to be(false)
end

Then(/^I print a list from users$/) do
 	p @list
end

Given(/^I seach client (\w+)$/) do |user|
	@user = user
	expect(client.client_id.has_value?(user)).to be(true)
end

When(/^I insert id (\d+)$/) do |id|
	@id = id.to_i
	expect(client.priced.has_key?(id.to_i)).to be(true)
end

Then(/^I have priced: (\d+)$/) do |price|
	client.client_id[@id] == @user && client.priced[@id] == price.to_i ? value = true : value = false
	expect(value).to be(true)
end