require 'spec_helper'

describe "designations/show" do
  before(:each) do
    @designation = assign(:designation, stub_model(Designation,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
