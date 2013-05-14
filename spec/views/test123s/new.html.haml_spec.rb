require 'spec_helper'

describe "test123s/new" do
  before(:each) do
    assign(:test123, stub_model(Test123,
      :name => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new test123 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", test123s_path, "post" do
      assert_select "input#test123_name[name=?]", "test123[name]"
      assert_select "input#test123_age[name=?]", "test123[age]"
    end
  end
end
