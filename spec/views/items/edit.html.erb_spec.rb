require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :shopping_list_id => "",
      :name => "MyText"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[shopping_list_id]"

      assert_select "textarea[name=?]", "item[name]"
    end
  end
end
