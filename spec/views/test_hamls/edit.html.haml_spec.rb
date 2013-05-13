require 'spec_helper'

describe "test_hamls/edit" do
  before(:each) do
    @test_haml = assign(:test_haml, stub_model(TestHaml,
      : => "",
      :haml_int => "",
      :haml_float => "",
      :haml_text => "MyText"
    ))
  end

  it "renders the edit test_haml form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", test_haml_path(@test_haml), "post" do
      assert_select "input#test_haml_[name=?]", "test_haml[]"
      assert_select "input#test_haml_haml_int[name=?]", "test_haml[haml_int]"
      assert_select "input#test_haml_haml_float[name=?]", "test_haml[haml_float]"
      assert_select "textarea#test_haml_haml_text[name=?]", "test_haml[haml_text]"
    end
  end
end
