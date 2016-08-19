class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :address
      t.string :hour
      t.float :base_rate
      t.text :descripton

      t.timestamps
    end
  end
end
