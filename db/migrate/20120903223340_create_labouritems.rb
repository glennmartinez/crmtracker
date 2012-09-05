class CreateLabouritems < ActiveRecord::Migration
  def change
    create_table :labouritems do |t|
      t.string :description
      t.integer :hours
      t.integer :total
      t.references :quote
      t.references :contractor

      t.timestamps
    end
    add_index :labouritems, :quote_id
    add_index :labouritems, :contractor_id
  end
end
