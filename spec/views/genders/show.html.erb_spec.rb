require 'spec_helper'

describe "genders/show" do
  before(:each) do
    @gender = assign(:gender, stub_model(Gender,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
