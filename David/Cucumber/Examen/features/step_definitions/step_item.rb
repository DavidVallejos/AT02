Given(/^I have a (\w+)$/) do |item|
  @item = item
end

When(/^I search in the list of items$/) do
  @value = Item.is_item_exist(@item,$item_list)
end

Then(/^I should see a message that the item exist$/) do
  expect(@value).to be(true)
end

Then(/^I should see a message that the item not exist$/) do
  expect(@value).to be(false)
end