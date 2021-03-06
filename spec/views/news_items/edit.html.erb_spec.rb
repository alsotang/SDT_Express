require 'spec_helper'

describe "news_items/edit" do
  before(:each) do
    @news_item = assign(:news_item, stub_model(NewsItem,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit news_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", news_item_path(@news_item), "post" do
      assert_select "input#news_item_title[name=?]", "news_item[title]"
      assert_select "textarea#news_item_content[name=?]", "news_item[content]"
    end
  end
end
