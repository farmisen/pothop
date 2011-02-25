Given /^I fill in '(.*)' for '(.*)'$/ do |value, field|
  fill_in(field, :with => value)
end

When /^I press '(.*)'$/ do |name|
  click_button(name)
end

Then /^I should see '(.*)'$/ do |text|
  #save_and_open_page
  should_see text
end

When /^I select '(.*)' from '(.*)'$/ do |option, from|
  select(option, :from => from)
end
