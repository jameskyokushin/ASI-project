require 'spec_helper'

describe "provinces/show" do
  before(:each) do
    @province = assign(:province, stub_model(Province,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
