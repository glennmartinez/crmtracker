class CreateLabouritems < ActiveRecord::Migration
  def change
    create_table :labouritems do |t|
      t.string :description
      t.integer :hours
      t.integer :total
      t.integer :contractor_id
      t.string  :contractor_name
      t.references :quote
      t.references :invoice
      t.integer :contractor_rate
      t.integer :muppercent
      t.integer :muphourrate
      t.integer :muptotal
      t.integer :progress_percent
      t.integer :progress_payment
      t.integer :total_days
      t.integer :days_completed
      t.integer :days_remaining
      t.date :start_date
      t.date :end_date

      

      t.timestamps
    end
    add_index :labouritems, :quote_id
    add_index :labouritems, :invoice_id
    
  end
end
