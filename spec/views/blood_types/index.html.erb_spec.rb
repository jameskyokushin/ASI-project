require 'spec_helper'

describe "blood_types/index" do
  before(:each) do
    assign(:blood_types, [
      stub_model(BloodType,
        :name => "Name"
      ),
      stub_model(BloodType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of blood_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
