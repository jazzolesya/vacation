class AddPriceToHotels < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :price, :string
  end
end
