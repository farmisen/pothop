Pothop.controllers :deals do

  get :index do
    render 'deals/index'
  end

  get :new do
    session[:@partner_name] = params[:@partner_name]
    @city_names = City.all.map { |c| c.name}
    @partner_names = get_partner_names_for_city_name(session[:deal_city_name])
    @deal = Deal.new
    render 'deals/new'
  end

  post :create do
    @deal = Deal.new(params[:deal])
    if (@deal.save)
      redirect url(:deals, :edit, :id => @deal.id)
    else
      render 'deals/new'
    end
  end

  put :update do
  end

  delete :destroy do
  end

  get :edit, :with => :id do
    @deal = Deal[params[:id]]
    render 'deals/edit'
  end

  get :choose_deal_city do
    @deal = Deal.new()
    @city_names = City.all.map { |c| c.name}
    render 'deals/choose_city'
  end

  get :choose_partner  do
    city_name = params[:deal].delete('deal_city_name')
    @deal = Deal.new(params[:deal])
    @deal.city = City[:name => city_name]
    @partner_names = get_partner_names_for_city_name(city_name)
    render 'deals/choose_partner'
  end


end
