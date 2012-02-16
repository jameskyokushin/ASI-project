require 'spec_helper'

describe "civil_statuses/new" do
  before(:each) do
    assign(:civil_status, stub_model(CivilStatus,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new civil_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => civil_statuses_path, :method => "post" do
      assert_select "input#civil_status_name", :name => "civil_status[name]"
    end
  end
end
