require 'spec_helper'

describe CatsController do

  describe "#index" do
    it "should display cats" do
      get :index
      response.status.should eql(200)
    end
  end

  describe "#create" do
    it "should create new cat" do
      lambda do
        post :create, :cat => {:name => "test-hitler-looking-cat", :url => "http://lolcat.com/test.png"}
        response.status.should eql(302)
      end.should change(Cat, :count).by(1)
    end
  end

end
