class Front::RegistrationsController < FrontController
  def new
    @user = User.new
  end

  def create
    puts '送信！'

    @user = User.new(params.require(:user).permit(:name, :password))

    if @user.save
      redirect_to front_root_url
    else
      render :new, status: 442
    end
  end
end
