Given(/^Admin user is define$/) do
	expect($app_user).to_not be(nil)
end

When(/^I verify (\w+) exist$/) do|user|
	expect(Users.extract_user_from_array(user,$list)).to be(true)
end

When(/^I verify (\w+) does not exist$/) do |user|
	expect(Users.extract_user_from_array(user,$list)).to be(false)
end

Then(/^I print a list from users$/) do
 	p $list
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