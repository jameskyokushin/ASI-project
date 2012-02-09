require 'spec_helper'

describe "leads/edit" do
  before(:each) do
    @lead = assign(:lead, stub_model(Lead,
      :name => "MyString"
    ))
  end

  it "renders the edit lead form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => leads_path(@lead), :method => "post" do
      assert_select "input#lead_name", :name => "lead[name]"
    end
  end
end
