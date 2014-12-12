require 'rails_helper'

RSpec.describe "AjaxControllers", :type => :request do
  describe "Post ajax/index" do
    it "should response status 200" do
      post "ajax"
      expect(response).to have_http_status 200
    end
  end
end
