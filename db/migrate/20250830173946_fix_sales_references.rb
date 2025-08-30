class FixSalesReferences < ActiveRecord::Migration[8.0]
  def change
    remove_column :sales, :buyer, :integer
    remove_column :sales, :item, :integer
    remove_column :sales, :seller, :integer

    add_reference :sales, :buyer, null: false, foreign_key: true
    add_reference :sales, :item, null: false, foreign_key: true
    add_reference :sales, :seller, null: false, foreign_key: true
  end
end
