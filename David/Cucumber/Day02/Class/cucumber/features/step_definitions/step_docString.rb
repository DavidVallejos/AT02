When(/^I behave unscrupulously$/) do
  
end

Then(/^I should receive an email containing:$/) do |string|
	@date = string
end

Then(/^my account should be locked$/) do
	puts @date
end