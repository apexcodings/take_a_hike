class AddCoordsToHikes < ActiveRecord::Migration[5.1]
  def change
    add_column(:hikes, :latitude, :float)
    add_column(:hikes, :longitude, :float)
  end
end
