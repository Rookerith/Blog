require 'spec_helper'

describe "test123s/show" do
  before(:each) do
    @test123 = assign(:test123, stub_model(Test123,
      :name => "Name",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
