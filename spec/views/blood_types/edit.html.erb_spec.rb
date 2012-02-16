require 'spec_helper'

describe "blood_types/edit" do
  before(:each) do
    @blood_type = assign(:blood_type, stub_model(BloodType,
      :name => "MyString"
    ))
  end

  it "renders the edit blood_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blood_types_path(@blood_type), :method => "post" do
      assert_select "input#blood_type_name", :name => "blood_type[name]"
    end
  end
end
