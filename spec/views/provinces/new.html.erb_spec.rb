require 'spec_helper'

describe "provinces/new" do
  before(:each) do
    assign(:province, stub_model(Province,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new province form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => provinces_path, :method => "post" do
      assert_select "input#province_name", :name => "province[name]"
    end
  end
end
