Given(/^I have \$(\d+) in my account$/) do |total|
  @total = total.to_i
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |extrac|
  @extrac = extrac.to_i
end

Then(/^I should receive \$(\d+) cash$/) do |recieve|
  puts @recieve = recieve.to_i
end

Then(/^the balance of my account should be \$(\d+)$/) do |balance|
  @calculate = @total - @extrac
  expect(@calculate).to eql(balance.to_i)
end