require 'spec_helper'

describe "provinces/edit" do
  before(:each) do
    @province = assign(:province, stub_model(Province,
      :name => "MyString"
    ))
  end

  it "renders the edit province form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => provinces_path(@province), :method => "post" do
      assert_select "input#province_name", :name => "province[name]"
    end
  end
end
