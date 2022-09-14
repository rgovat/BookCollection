class RemovePriceFromBook < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :price, :integer
  end
end
