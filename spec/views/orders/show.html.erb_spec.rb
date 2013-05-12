require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :start_loc => "Start Loc",
      :end_loc => "End Loc",
      :price => 1,
      :is_done => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Start Loc/)
    rendered.should match(/End Loc/)
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
