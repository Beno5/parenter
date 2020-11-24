class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.integer :parent_id
      t.integer :nanny_id

      t.timestamps
    end
  end
end
