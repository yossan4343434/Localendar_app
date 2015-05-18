class Front::SessionsController < FrontController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to front_root_url
    else
      redirect_to front_login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to front_root_url
  end
end
