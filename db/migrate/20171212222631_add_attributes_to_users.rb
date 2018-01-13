class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :photo_url, :string

    add_index :users, [:provider, :uid]
  end
end
