require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  describe "Registration" do
    it "should responce status 200" do
      get signup_path
      expect(response).to have_http_status(200)
    end
  end


  describe "Страница регистрации" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "Не валидное заполнение" do
      it "не должен создаваться пользователь" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "Валидное заполнение" do
      before do
        fill_in "Имя",        with: "Test user"
        fill_in "Email",      with: "test@mail.ru"
        fill_in "Пароль",     with: "foobar"
        fill_in "Повторите",  with: "foobar"
      end

      it "Должен создаться пользователь" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end

  end

end
