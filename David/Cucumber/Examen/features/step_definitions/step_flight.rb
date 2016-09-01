Given(/^(\w+) login$/) do |user|
  @user = user
end

When(/^I insert a (\w+)$/) do |pass|
  @pass = pass
end

Then(/^I see a mesage$/) do
  puts "Welcome #{@user}"
end

Given(/^I am login$/) do
  
end

Given(/^I select the (\w+), (\w+), (.*)$/) do |origin, desti, date|
  @origin = origin
  @desti = desti
  @date = date
end

When(/^I search the (\w+)$/) do |avai|
  @avai = avai
end

Then(/^I see a mesage if my (\d+) is availability$/) do |fly|
  @fly = fly.to_i
  @hash = {"From" => @origin, "TO" => @desti, "date" => @date, "available" => @avai, "flight" => @fly}
  value = false
  $flights.each do |hashes_f|
      if hashes_f == @hash
        value = true
      end
  end
   expect(value).to be(true)
end