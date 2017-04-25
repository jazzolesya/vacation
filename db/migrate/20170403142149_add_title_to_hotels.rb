class AddTitleToHotels < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :title, :string
  end
end
