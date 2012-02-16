require 'spec_helper'

describe "religions/edit" do
  before(:each) do
    @religion = assign(:religion, stub_model(Religion,
      :name => "MyString"
    ))
  end

  it "renders the edit religion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => religions_path(@religion), :method => "post" do
      assert_select "input#religion_name", :name => "religion[name]"
    end
  end
end
