class CreateProdutos < ActiveRecord::Migration[8.0]
  def change
    create_table :produtos do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
