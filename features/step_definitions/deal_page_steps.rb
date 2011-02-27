Given /^I am on the deal page$/ do
  visit '/deal'
end

Given /^I have selected '(.*)' for city$/ do |city_name|
  select(city_name, :from => 'city_selector')
  click_button('change')
end

Then /^I should see '(.*)' selected for city$/ do |city_name|
  #save_and_open_page
  dropdown_should_equal('city_selector', city_name)
end

