require 'spec_helper'

describe "civil_statuses/index" do
  before(:each) do
    assign(:civil_statuses, [
      stub_model(CivilStatus,
        :name => "Name"
      ),
      stub_model(CivilStatus,
        :name => "Name"
      )
    ])
  end

  it "renders a list of civil_statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
