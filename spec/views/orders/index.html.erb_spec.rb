require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :start_loc => "Start Loc",
        :end_loc => "End Loc",
        :price => 1,
        :is_done => false
      ),
      stub_model(Order,
        :start_loc => "Start Loc",
        :end_loc => "End Loc",
        :price => 1,
        :is_done => false
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Start Loc".to_s, :count => 2
    assert_select "tr>td", :text => "End Loc".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
