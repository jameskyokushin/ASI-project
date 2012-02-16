require 'spec_helper'

describe "branches/edit" do
  before(:each) do
    @branch = assign(:branch, stub_model(Branch,
      :name => "MyString"
    ))
  end

  it "renders the edit branch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => branches_path(@branch), :method => "post" do
      assert_select "input#branch_name", :name => "branch[name]"
    end
  end
end
