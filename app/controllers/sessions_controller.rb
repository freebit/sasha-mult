class SessionsController < ApplicationController


  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or root_url
    else
      flash.now[:error] = 'Пара логин/пароль не совпадают!'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end



end
