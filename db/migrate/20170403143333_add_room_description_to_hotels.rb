class AddRoomDescriptionToHotels < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :room_description, :text
  end
end
