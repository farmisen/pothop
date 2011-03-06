When /^I am on the manage partner accounts page$/ do
  visit '/partner_accounts'
end

Then /^I can see (\d+) partners$/ do |count|
  save_and_open_page
  page.should have_css("table tr.partner", :count => count.to_i)
end
