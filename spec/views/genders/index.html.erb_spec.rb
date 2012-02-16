require 'spec_helper'

describe "genders/index" do
  before(:each) do
    assign(:genders, [
      stub_model(Gender,
        :name => "Name"
      ),
      stub_model(Gender,
        :name => "Name"
      )
    ])
  end

  it "renders a list of genders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
