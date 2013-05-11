require 'spec_helper'

describe "drivers/index" do
  before(:each) do
    assign(:drivers, [
      stub_model(Driver,
        :name => "Name",
        :vehicle_type => 1,
        :current_loc => "Current Loc",
        :vehicle_status => false
      ),
      stub_model(Driver,
        :name => "Name",
        :vehicle_type => 1,
        :current_loc => "Current Loc",
        :vehicle_status => false
      )
    ])
  end

  it "renders a list of drivers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Current Loc".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
