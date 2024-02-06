class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :name
      t.integer :amount
      t.decimal :price

      t.timestamps
    end
  end
end
