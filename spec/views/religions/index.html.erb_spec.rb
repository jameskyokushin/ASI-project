require 'spec_helper'

describe "religions/index" do
  before(:each) do
    assign(:religions, [
      stub_model(Religion,
        :name => "Name"
      ),
      stub_model(Religion,
        :name => "Name"
      )
    ])
  end

  it "renders a list of religions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
