class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :img_url
      t.string :description, :null => false, :default => "This is a beautiful shop."

      t.timestamps
    end
  end
end
