require 'spec_helper'

describe "departments/edit" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :name => "MyString"
    ))
  end

  it "renders the edit department form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => departments_path(@department), :method => "post" do
      assert_select "input#department_name", :name => "department[name]"
    end
  end
end
