require 'spec_helper'

describe "genders/edit" do
  before(:each) do
    @gender = assign(:gender, stub_model(Gender,
      :name => "MyString"
    ))
  end

  it "renders the edit gender form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => genders_path(@gender), :method => "post" do
      assert_select "input#gender_name", :name => "gender[name]"
    end
  end
end
