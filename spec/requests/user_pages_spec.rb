require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  describe "Registration" do
    it "should responce status 200" do
      get 'users/new'
      expect(response).to have_http_status(200)
    end
  end
end
