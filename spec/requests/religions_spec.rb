require 'spec_helper'

describe "Religions" do
  describe "GET /religions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get religions_path
      response.status.should be(200)
    end
  end
end
