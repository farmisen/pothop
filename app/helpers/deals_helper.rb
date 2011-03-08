# Helper methods defined here can be accessed in any controller or view in the application

Pothop.helpers do
  def get_partner_names_for_city_name( city_name )
    city = City[:name => city_name]
    Account.filter(:role => 'partner', :city_id => city.id).map{|a| a.business_name }
  end
end
