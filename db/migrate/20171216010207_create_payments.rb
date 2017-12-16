class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :status, null: false
      t.integer :loan_id, null: false
      t.decimal :amount, null: false

      t.timestamps
    end

    add_index :payments, :loan_id
  end
end
