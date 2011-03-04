require 'spec_helper'

describe Cat do

  before(:each) do
    Cat.delete_all
  end

  describe "validations" do

    it "should be valid" do
      cat = Cat.new(:name => "panther", :url => "http://great.panther.com/pan.jpg")
      cat.should be_valid
    end

    it "should not be valid" do
      Cat.new.should_not be_valid
    end

  end # end of validations describe

end
