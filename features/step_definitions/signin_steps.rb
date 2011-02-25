Given /^An existing account with email "([^"]*)" and password "([^"]*)" and first_name "([^"]*)" and last_name "([^"]*)" and role "([^"]*)"$/ do |email, password, first_name, last_name, role|
  Account.create(:email => email, :first_name => first_name, :last_name => last_name, :password => password, :password_confirmation => password, :role => role )
end

Given /^I am on the signin page$/ do
  visit '/signin'
end
