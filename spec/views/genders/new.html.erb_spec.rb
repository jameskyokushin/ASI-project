require 'spec_helper'

describe "genders/new" do
  before(:each) do
    assign(:gender, stub_model(Gender,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new gender form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => genders_path, :method => "post" do
      assert_select "input#gender_name", :name => "gender[name]"
    end
  end
end
