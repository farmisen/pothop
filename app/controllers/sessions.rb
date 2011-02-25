Pothop.controllers :sessions do
  get :signin, :map => "/signin" do
    render 'sessions/signin'
  end

  post :signin, :map => "/signin" do
    @account = Account.authenticate(params[:email], params[:password])
    render 'sessions/hello'
  end

end
