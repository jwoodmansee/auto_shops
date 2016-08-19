class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.string :year
      t.string :milage
      t.text :issues
      t.belongs_to :shop
      t.timestamps
    end
  end
end
