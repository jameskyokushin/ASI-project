require 'spec_helper'

describe "religions/new" do
  before(:each) do
    assign(:religion, stub_model(Religion,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new religion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => religions_path, :method => "post" do
      assert_select "input#religion_name", :name => "religion[name]"
    end
  end
end
