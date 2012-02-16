require 'spec_helper'

describe "branches/index" do
  before(:each) do
    assign(:branches, [
      stub_model(Branch,
        :name => "Name"
      ),
      stub_model(Branch,
        :name => "Name"
      )
    ])
  end

  it "renders a list of branches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
