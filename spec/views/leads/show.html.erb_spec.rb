require 'spec_helper'

describe "leads/show" do
  before(:each) do
    @lead = assign(:lead, stub_model(Lead,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
