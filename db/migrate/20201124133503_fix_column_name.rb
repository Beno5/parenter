class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :numbers_of_kids, :number_of_kids
  end
end
