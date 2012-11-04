class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :date
      t.string :client
      t.references :quote

      t.timestamps
    end
    add_index :invoices, :quote_id
  end
end
