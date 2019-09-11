class ChangePriceToString < ActiveRecord::Migration[6.0]
  def change
    change_column :dishes, :price, :string
  end
end
