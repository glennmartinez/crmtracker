class CreateLabouritems < ActiveRecord::Migration
  def change
    create_table :labouritems do |t|
      t.string :description
      t.integer :hours
      t.integer :total
      t.integer :contractor_id
      t.string  :contractor_name
      t.references :quote
      t.integer :contractor_rate
      

      t.timestamps
    end
    add_index :labouritems, :quote_id
    
  end
end
