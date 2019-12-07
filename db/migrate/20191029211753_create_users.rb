class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :bank, :null => false, :default => 500
      t.integer :last_day, :null => false, :default => 0

      t.timestamps
    end
  end
end
