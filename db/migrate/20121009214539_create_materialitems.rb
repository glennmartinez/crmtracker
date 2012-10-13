class CreateMaterialitems < ActiveRecord::Migration
  def change
    create_table :materialitems do |t|
      t.string :name
      t.integer :quantity
      t.integer :material_total
      t.references :quote
      t.references :supplier
 


      t.timestamps
    end
        add_index :materialitems, :quote_id
        add_index :materialitems, :supplier_id

  end
end
