class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :bio, :text
    add_column :users, :price, :integer
    add_column :users, :max_cap, :integer
    add_column :users, :numbers_of_kids, :integer
    add_column :users, :can_host, :boolean
    add_column :users, :year_of_birth, :integer
    add_column :users, :nanny_true, :boolean
  end
end
