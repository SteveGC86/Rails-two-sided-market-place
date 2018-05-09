require 'rails_helper'

RSpec.describe "shopping_lists/show", type: :view do
  before(:each) do
    @shopping_list = assign(:shopping_list, ShoppingList.create!(
      :user => nil,
      :item_limit => 2,
      :delivered => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
