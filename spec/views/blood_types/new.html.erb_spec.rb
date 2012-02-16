require 'spec_helper'

describe "blood_types/new" do
  before(:each) do
    assign(:blood_type, stub_model(BloodType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new blood_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blood_types_path, :method => "post" do
      assert_select "input#blood_type_name", :name => "blood_type[name]"
    end
  end
end
