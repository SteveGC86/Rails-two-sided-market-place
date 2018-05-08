class CreateShoppingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_lists do |t|
      t.references :user, foreign_key: true
      t.integer :shopper_id
      t.integer :item_limit
      t.boolean :delivered
      t.timestamp :delivered_at

      t.timestamps
    end
  end
end
