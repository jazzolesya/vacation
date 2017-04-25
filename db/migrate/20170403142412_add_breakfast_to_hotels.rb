class AddBreakfastToHotels < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :breakfast, :boolean, default: false
  end
end
