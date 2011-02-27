Pothop.controllers :sessions do
  get :signin, :map => "/signin" do
    render 'sessions/signin'
  end

  post :signin, :map => "/signin" do
    account = Account.authenticate(params[:email], params[:password])
    if account.nil?
      flash[:error] = 'Wrong password'
      render 'sessions/signin'
    else
      set_current_account(account)
      redirect url_for(:deal, :index)
    end
  end

end
