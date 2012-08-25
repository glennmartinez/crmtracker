class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :surname
      t.string :email
      t.references :project

      t.timestamps
    end
    add_index :clients, :project_id
  end
end
