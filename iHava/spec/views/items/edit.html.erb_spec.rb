require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "MyString",
      :id => 1,
      :url => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_name", :name => "item[name]"
      assert_select "input#item_id", :name => "item[id]"
      assert_select "input#item_url", :name => "item[url]"
    end
  end
end
