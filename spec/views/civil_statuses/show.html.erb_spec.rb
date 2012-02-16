require 'spec_helper'

describe "civil_statuses/show" do
  before(:each) do
    @civil_status = assign(:civil_status, stub_model(CivilStatus,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
