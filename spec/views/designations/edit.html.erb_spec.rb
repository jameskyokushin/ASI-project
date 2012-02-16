require 'spec_helper'

describe "designations/edit" do
  before(:each) do
    @designation = assign(:designation, stub_model(Designation,
      :name => "MyString"
    ))
  end

  it "renders the edit designation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => designations_path(@designation), :method => "post" do
      assert_select "input#designation_name", :name => "designation[name]"
    end
  end
end
