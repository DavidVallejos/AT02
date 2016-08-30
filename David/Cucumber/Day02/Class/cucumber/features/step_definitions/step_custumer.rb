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