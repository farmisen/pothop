Given /^the following user exists:$/ do |table|
  params = table.hashes[0]
  params['password_confirmation'] = params['password']
  city = params.delete( 'city')
  Account.create(params)
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




