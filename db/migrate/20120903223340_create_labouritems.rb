class CreateLabouritems < ActiveRecord::Migration
  def change
    create_table :labouritems do |t|
      t.string :description
      t.integer :hours
      t.integer :total
      t.references :quote

      t.timestamps
    end
    add_index :labouritems, :quote_id
  end
end
