require 'spec_helper'

describe "drivers/edit" do
  before(:each) do
    @driver = assign(:driver, stub_model(Driver,
      :name => "MyString",
      :vehicle_type => 1,
      :current_loc => "MyString",
      :vehicle_status => false
    ))
  end

  it "renders the edit driver form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", driver_path(@driver), "post" do
      assert_select "input#driver_name[name=?]", "driver[name]"
      assert_select "input#driver_vehicle_type[name=?]", "driver[vehicle_type]"
      assert_select "input#driver_current_loc[name=?]", "driver[current_loc]"
      assert_select "input#driver_vehicle_status[name=?]", "driver[vehicle_status]"
    end
  end
end
