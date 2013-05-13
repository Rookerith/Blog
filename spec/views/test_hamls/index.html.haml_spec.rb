require 'spec_helper'

describe "test_hamls/index" do
  before(:each) do
    assign(:test_hamls, [
      stub_model(TestHaml,
        : => "",
        :haml_int => "",
        :haml_float => "",
        :haml_text => "MyText"
      ),
      stub_model(TestHaml,
        : => "",
        :haml_int => "",
        :haml_float => "",
        :haml_text => "MyText"
      )
    ])
  end

  it "renders a list of test_hamls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
