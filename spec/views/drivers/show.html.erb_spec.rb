require 'spec_helper'

describe "drivers/show" do
  before(:each) do
    @driver = assign(:driver, stub_model(Driver,
      :name => "Name",
      :vehicle_type => 1,
      :current_loc => "Current Loc",
      :vehicle_status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Current Loc/)
    rendered.should match(/false/)
  end
end
