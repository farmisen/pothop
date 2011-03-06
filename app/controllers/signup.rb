Pothop.controllers :signup do

  before do
    params.delete( "_utf8" ) if params.include?( "_utf8" )
    params['role'] = 'user'
  end

  get :index, :map => '/signup' do
    render 'signup/index'
  end

  post :index, :map => '/signup' do

    @account = Account.new(params)
    if (@account.save)
      set_current_account(@account)
      redirect url(:deal, :index)
    else
      render 'signup/index'
    end
    
  end

end
