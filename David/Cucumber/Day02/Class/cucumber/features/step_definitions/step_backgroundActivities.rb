Given(/^I have a time$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I clean my car$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should get the car$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I do not have money$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I think on a free parks around my house$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should choose a park is closer$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have shopping list like:$/) do |table|
  @list = table.raw
end

When(/^I can change (\w+) and (\d+)$/) do |name, quantity|
  quantity = quantity.to_i
  @list[2][1] = quantity.to_s
end

Then(/^shopping list loks like this:$/) do |table|
  puts @list
  table.diff!(@list)
end