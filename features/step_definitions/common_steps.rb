Given /^the following user exists:$/ do |table|
  params = table.hashes[0]
  params['password_confirmation'] = params['password']
  city = City[ :name => params.delete( 'city')]
  account = Account.new(params)
  account.city = city
  account.save
end

Given /^the following cities exist:$/ do |table|
  table.hashes.each { |city| City.create(city) }
end

Given /^the following deals exist:$/ do |table|
  table.hashes.each {
      |params|
      city = City[ :name => params.delete( 'city')]
      deal = Deal.new(params)
      deal.city = city
      deal.save
  }
end

Given /^I am logged in with the following values:$/ do |table|
  params = table.hashes[0]
  email = params['email']
  password = params['password']
  When "I am on the signin page"
  When "I fill in '#{email}' for 'email'"
  When "I fill in '#{password}' for 'password'"
  When "I press 'Sign In'"
end




