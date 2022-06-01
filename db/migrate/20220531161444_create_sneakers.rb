class CreateSneakers < ActiveRecord::Migration[6.1]
  def change
    create_table :sneakers do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :size
      t.string :model
      t.string :brand
      t.string :condition
      t.integer :price
      t.integer :inventory
      t.text :description

      t.timestamps
    end
  end
end
