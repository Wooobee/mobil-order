require 'spec_helper'

describe StaticController do

  describe "GET 'imprint'" do
    it "returns http success" do
      get 'imprint'
      response.should be_success
    end
  end

  describe "GET 'how'" do
    it "returns http success" do
      get 'how'
      response.should be_success
    end
  end

end
