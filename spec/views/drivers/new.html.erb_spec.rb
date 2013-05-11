require 'spec_helper'

describe "drivers/new" do
  before(:each) do
    assign(:driver, stub_model(Driver,
      :name => "MyString",
      :vehicle_type => 1,
      :current_loc => "MyString",
      :vehicle_status => false
    ).as_new_record)
  end

  it "renders new driver form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", drivers_path, "post" do
      assert_select "input#driver_name[name=?]", "driver[name]"
      assert_select "input#driver_vehicle_type[name=?]", "driver[vehicle_type]"
      assert_select "input#driver_current_loc[name=?]", "driver[current_loc]"
      assert_select "input#driver_vehicle_status[name=?]", "driver[vehicle_status]"
    end
  end
end
