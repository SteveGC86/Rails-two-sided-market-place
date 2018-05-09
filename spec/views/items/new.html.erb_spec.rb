require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :shopping_list_id => "",
      :name => "MyText"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[shopping_list_id]"

      assert_select "textarea[name=?]", "item[name]"
    end
  end
end
