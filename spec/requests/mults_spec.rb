require 'rails_helper'

RSpec.describe "controller Mults", :type => :request do
  describe "GET /mults/index" do
    it "should responce status 200" do
      get 'mults/index'
      expect(response).to have_http_status 200
    end
  end
end


RSpec.describe "controller Mults", type: :request do

  describe "GET /mults/search" do
    it "should responce status 200" do
      get 'mults/search'
      expect(response).to have_http_status 200
    end
  end

end
