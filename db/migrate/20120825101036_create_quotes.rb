class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :status
      t.references :project
      t.integer :labourtotal
      t.integer :materialtotal
      t.integer :subtotal

      t.timestamps
    end
    add_index :quotes, :project_id
  end
end


