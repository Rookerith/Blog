require 'spec_helper'

describe "test_hamls/show" do
  before(:each) do
    @test_haml = assign(:test_haml, stub_model(TestHaml,
      : => "",
      :haml_int => "",
      :haml_float => "",
      :haml_text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end
