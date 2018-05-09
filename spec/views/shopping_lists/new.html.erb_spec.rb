require 'rails_helper'

RSpec.describe "shopping_lists/new", type: :view do
  before(:each) do
    assign(:shopping_list, ShoppingList.new(
      :user => nil,
      :item_limit => 1,
      :delivered => false
    ))
  end

  it "renders new shopping_list form" do
    render

    assert_select "form[action=?][method=?]", shopping_lists_path, "post" do

      assert_select "input[name=?]", "shopping_list[user_id]"

      assert_select "input[name=?]", "shopping_list[item_limit]"

      assert_select "input[name=?]", "shopping_list[delivered]"
    end
  end
end
