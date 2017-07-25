class CreateHikes < ActiveRecord::Migration[5.1]
  def change
    create_table :hikes do |t|
      t.string :name
      t.float :length
      t.integer :elevation
      t.string :difficulty
      t.float :rating
      t.string :description

      t.timestamps
    end
  end
end
