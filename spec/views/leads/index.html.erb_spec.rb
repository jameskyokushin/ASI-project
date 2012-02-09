require 'spec_helper'

describe "leads/index" do
  before(:each) do
    assign(:leads, [
      stub_model(Lead,
        :name => "Name"
      ),
      stub_model(Lead,
        :name => "Name"
      )
    ])
  end

  it "renders a list of leads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
