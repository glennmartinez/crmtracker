class CreateProjectships < ActiveRecord::Migration
  def change
    create_table :projectships do |t|
      t.integer :project_id
      t.integer :contractor_id

      t.timestamps
    end
  end
end
