class CreateQuoteships < ActiveRecord::Migration
  def change
    create_table :quoteships do |t|
      t.integer :quote_id
      t.integer :contractor_id

      t.timestamps
    end
  end
end
