class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :firstname
      t.string :surname
      t.string :email
      t.string :active

      t.timestamps
    end
  end
end
