require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :shopping_list_id => "",
        :name => "MyText"
      ),
      Item.create!(
        :shopping_list_id => "",
        :name => "MyText"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
