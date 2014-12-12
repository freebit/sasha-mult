class MultsController < ApplicationController

  before_action :signed_in_user, only: [:search]
  #before_action :correct_user

  def index
    @mults = Mult.where(user:current_user).order(created_at: :desc)

  end

  def search

  end



  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Пожалуйста авторизуйтесь!" unless signed_in?
      end

    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
