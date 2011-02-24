Given /^I visit the home page$/ do
  visit '/'
end

Then /^I should see a dropdown of cities$/ do
  dropdown_should_include "cities", ["East Bay", "San Francisco"]
end

Given /^I visit the enter email address page$/ do
  visit '/enter_email'
end

