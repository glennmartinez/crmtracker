class CreateMaterialitems < ActiveRecord::Migration
  def change
    create_table :materialitems do |t|
      t.string :name
      t.integer :quantity
      t.integer :material_total
      t.references :quote
      t.integer :supplier_id

      t.timestamps
    end
        add_index :materialitems, :quote_id

  end
end
