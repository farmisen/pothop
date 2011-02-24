Given /^I have an existing account with email "([^"]*)" and password "([^"]*)" and first_name "([^"]*)"$/ do |email, password, first_name|
  Account.create(:email => email, :first_name => first_name, :password => password, :password_confirmation => password )
end

Given /^I am on the signin page$/ do
  visit '/signin'
end
