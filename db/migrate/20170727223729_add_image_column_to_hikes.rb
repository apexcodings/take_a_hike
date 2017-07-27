class AddImageColumnToHikes < ActiveRecord::Migration[5.1]
  def up
    add_attachment :hikes, :image
  end

  def down
    remove_attachment :hikes, :image
  end
end
