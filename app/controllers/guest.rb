Pothop.controllers :guest do
  get :index, :map => "/" do
    render 'guest/confirm_city'
  end

  get :enter_email, :map => "/enter_email" do
    render 'guest/enter_email'
  end

  get :home, :map => "/home" do
    @guest_email = session[:guest_email]
    render 'guest/home'
  end

  post :confirm_city, :map => "/confirm_city" do
    redirect url(:guest, :enter_email)
  end

  post :enter_email, :map => "/enter_email" do
    session[:guest_email] = params[:email]
    redirect url(:guest, :home)
  end

end
