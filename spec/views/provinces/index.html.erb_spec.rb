require 'spec_helper'

describe "provinces/index" do
  before(:each) do
    assign(:provinces, [
      stub_model(Province,
        :name => "Name"
      ),
      stub_model(Province,
        :name => "Name"
      )
    ])
  end

  it "renders a list of provinces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
