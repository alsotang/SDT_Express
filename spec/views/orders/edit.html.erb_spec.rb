require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :start_loc => "MyString",
      :end_loc => "MyString",
      :price => 1,
      :is_done => false
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_path(@order), "post" do
      assert_select "input#order_start_loc[name=?]", "order[start_loc]"
      assert_select "input#order_end_loc[name=?]", "order[end_loc]"
      assert_select "input#order_price[name=?]", "order[price]"
      assert_select "input#order_is_done[name=?]", "order[is_done]"
    end
  end
end
