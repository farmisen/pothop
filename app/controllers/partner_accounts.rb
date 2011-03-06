Pothop.controllers :partner_accounts do

  before do
    params.delete( "_utf8" ) if params.include?( "_utf8" )
    unless params[:account].nil?
      city_name = params[:account].delete('city_name')
      params[:account][:city] = City[:name => city_name] unless city_name.nil?
      params[:account][:role] = 'partner'
      params[:account][:tos_aggreement] = true
    end
  end

  get :index do
    @partner_accounts = Account.select(:role => 'partner')
    render 'partner_accounts/index'
  end

  get :new do
    @account = Account.new
    @city_names = City.all.map { |city| city.name }
    render 'partner_accounts/new'
  end

  post :create do
    @account = Account.new(params[:account])
    if (@account.save)
      redirect url(:partner_accounts, :edit, :id => @account.id)
    else
      render 'partner_accounts/new'
    end
  end

  get :edit, :with => :id do
    @account = Account[params[:id]]
    @city_names = City.all.map { |city| city.name }
    render 'partner_accounts/edit'
  end

  put :update, :with => :id do
    @account = Account[params[:id]]
    if @account.modified! && @account.update(params[:account])
      redirect url(:partner_accounts, :edit, :id => @account.id)
    else
      render 'partner_accounts/edit'
    end
  end

  delete :destroy, :with => :id do
    account = Account[params[:id]]
    account.destroy unless account == current_account
    redirect url(:partner_accounts, :index)
  end



end
