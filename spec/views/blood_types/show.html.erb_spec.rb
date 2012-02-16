require 'spec_helper'

describe "blood_types/show" do
  before(:each) do
    @blood_type = assign(:blood_type, stub_model(BloodType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
