class AddShoppingListToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :shopping_list, foreign_key: true
  end
end
