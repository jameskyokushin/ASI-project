require 'spec_helper'

describe "leads/new" do
  before(:each) do
    assign(:lead, stub_model(Lead,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new lead form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => leads_path, :method => "post" do
      assert_select "input#lead_name", :name => "lead[name]"
    end
  end
end
