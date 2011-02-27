Given /^I am on the deal page$/ do
  visit '/deal'
end

Given /^I have selected '(.*)' for city$/ do |city_name|
  select(city_name, :from => 'cities')
  click_button('change')
end
