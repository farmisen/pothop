Pothop.controllers :home do
  get :index, :map => "/" do
    render 'home/index'
  end

  post :confirm_city, :map => "/confirm_city" do
    render 'home/enter_email'
  end


end
