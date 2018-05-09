require 'rails_helper'

RSpec.describe "shopping_lists/index", type: :view do
  before(:each) do
    assign(:shopping_lists, [
      ShoppingList.create!(
        :user => nil,
        :item_limit => 2,
        :delivered => false
      ),
      ShoppingList.create!(
        :user => nil,
        :item_limit => 2,
        :delivered => false
      )
    ])
  end

  it "renders a list of shopping_lists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
