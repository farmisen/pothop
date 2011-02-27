Given /^I fill in '(.*)' for '(.*)'$/ do |value, field|
  fill_in(field, :with => value)
end

When /^I press '(.*)'$/ do |name|
  click_button(name)
  #save_and_open_page
end

Then /^I should see '(.*)'$/ do |text|
  #save_and_open_page
  should_see text
end

Then /^I should not see '(.*)'$/ do |text|
  #save_and_open_page
  should_not_see text
end

When /^I select '(.*)' from '(.*)'$/ do |option, from|
  select(option, :from => from)
end

And /^I should see a '(.*)' link$/ do |name|
  find_link(name).visible?
end
