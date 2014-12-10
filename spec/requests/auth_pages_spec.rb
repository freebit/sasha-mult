require 'rails_helper'

RSpec.describe "Авторизация", :type => :request do


    describe "Страница авторизации" do

      before { get signin_path }

      it "Статус 200 ок" do
        expect(response).to have_http_status(200)
      end

    end

    describe "Авторизация" do

      before { visit signin_path }

      describe "Ошибка авторизации" do
        before { click_button "Войти" }

        it { should have_selector('div.alert.alert-error') }
      end

    end




end
