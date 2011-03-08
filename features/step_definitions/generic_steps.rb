When /^I fill in '(.*)' for '(.*)'$/ do |value, field|
  fill_in(field, :with => value)
end

When /^I press '(.*)'$/ do |name|
  click_on(name)
end

When /^I should see '(.*)'$/ do |text|
  should_see text
end

When /^'(.*)' should contain '(.*)'$/ do |field, text|
  #save_and_open_page
  field_should_contain field, text
end

When /^I should not see '(.*)'$/ do |text|
  #save_and_open_page
  should_not_see text
end

When /^I select '(.*)' from '(.*)'$/ do |option, from|
  select(option, :from => from)
end

When /^I should see a '(.*)' link$/ do |name|
  find_link(name).visible?
end


When /^I check '(.*)'$/ do |name|
  check(name)
end

When /^I select '(.*)' for '(.*)'/ do |option, selector|
  #save_and_open_page
  select(option, :from => selector)
end
