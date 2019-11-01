class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :hygiene, :null => false, :default => 0
      t.integer :hunger, :null => false, :default => 0
      t.integer :attention, :null => false, :default => 0
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
