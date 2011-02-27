Pothop.controllers :deal do

  before do
    @city = session[:city] ||= City.first
    @deal = Deal[:city_id => @city.id]
  end

  get :index, :map => '/deal' do
    @city_names = City.all.map { |city| city.name }
    render 'deal/index'
  end

  post :change_city, :map => '/change_city' do
    city_name = params[:cities]
    session[:city] = City[:name => city_name ]
    redirect url_for( :deal, :index )
  end


end
