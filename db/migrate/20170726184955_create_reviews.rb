class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :account_id
      t.integer :hike_id
      t.string :author
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
