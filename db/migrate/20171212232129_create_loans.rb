class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.decimal :amount, null: false
      t.integer :payment_freq, null: false
      t.integer :term_length, null: false
      t.integer :lender_id, null: false
      t.integer :borrower_id, null: false
      t.integer :loan_request_id, null: false

      t.timestamps
    end

    add_index :loans, :lender_id
    add_index :loans, :borrower_id
    add_index :loans, :loan_request_id, unique: true
  end
end
