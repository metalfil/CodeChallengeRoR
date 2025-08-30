class CreateSales < ActiveRecord::Migration[8.0]
  def change
    create_table :sales do |t|
      t.integer :buyer
      t.integer :item
      t.integer :quantity
      t.integer :seller

      t.timestamps
    end
  end
end
