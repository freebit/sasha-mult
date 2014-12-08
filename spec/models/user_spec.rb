require 'rails_helper'

RSpec.describe User do

  let(:user) { FactoryGirl.create(:user) }

  it "should be valid" do
    expect(user).to be_valid
  end

  it "should respond to password" do
    expect(user).to respond_to(:password)
  end
  it "should respond to password_confirmation" do
    expect(user).to respond_to(:password_confirmation)
  end



end
