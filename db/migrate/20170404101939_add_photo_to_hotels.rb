class AddPhotoToHotels < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :photo, :string
  end
end
