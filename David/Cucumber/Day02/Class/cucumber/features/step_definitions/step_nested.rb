Then(/^I should see the main menu$/) do
end

And /^I have pushed my card into the slot$/ do
end

And /^I enter my PIN$/ do
end

And /^I press "OK"$/ do
end

Given /^I have authenticated with the correct PIN$/ do
steps %{
And I have pushed my card into the slot
And I enter my PIN
And I press "OK"
}
end