require 'spec_helper'

describe "branches/new" do
  before(:each) do
    assign(:branch, stub_model(Branch,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new branch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => branches_path, :method => "post" do
      assert_select "input#branch_name", :name => "branch[name]"
    end
  end
end
