class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :img_url
      t.string :category
      t.boolean :consumable, :null => false, :default => true
      t.string :effect
      t.belongs_to :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
