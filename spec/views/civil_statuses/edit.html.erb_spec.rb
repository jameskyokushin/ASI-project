require 'spec_helper'

describe "civil_statuses/edit" do
  before(:each) do
    @civil_status = assign(:civil_status, stub_model(CivilStatus,
      :name => "MyString"
    ))
  end

  it "renders the edit civil_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => civil_statuses_path(@civil_status), :method => "post" do
      assert_select "input#civil_status_name", :name => "civil_status[name]"
    end
  end
end
