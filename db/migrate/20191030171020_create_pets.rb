class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :img_url
      t.integer :hygiene, :null => false, :default => 50
      t.integer :hunger, :null => false, :default => 50
      t.integer :attention, :null => false, :default => 50
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
