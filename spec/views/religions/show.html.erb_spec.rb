require 'spec_helper'

describe "religions/show" do
  before(:each) do
    @religion = assign(:religion, stub_model(Religion,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
