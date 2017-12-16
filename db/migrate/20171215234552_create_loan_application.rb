class CreateLoanApplication < ActiveRecord::Migration[5.1]
  def change
    create_table :loan_applications do |t|
      t.string :status, null: false
      t.integer :loaner_id, null: false
      t.integer :applicant_id, null: false

      t.timestamps
    end

    add_index :loan_applications, :loaner_id
    add_index :loan_applications, :applicant_id
  end
end
