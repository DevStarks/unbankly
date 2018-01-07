class CreateLoanApplication < ActiveRecord::Migration[5.1]
  def change
    create_table :loan_requests do |t|
      t.string :status, null: false
      t.integer :lender_id, null: false
      t.integer :applicant_id, null: false

      t.timestamps
    end

    add_index :loan_requests, :lender_id
    add_index :loan_requests, :applicant_id
  end
end
