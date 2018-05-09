class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :shopping_list, foreign_key: true
      t.text :name

      t.timestamps
    end
  end
end
