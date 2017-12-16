class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.decimal :amount, null: false
      t.integer :payment_freq, null: false
      t.integer :term_length, null: false
      t.integer :loaner_id, null: false
      t.integer :loanee_id, null: false
      t.integer :loan_application_id, null: false

      t.timestamps
    end

    add_index :loans, :loaner_id
    add_index :loans, :loanee_id
    add_index :loans, :loan_application_id, unique: true
  end
end
