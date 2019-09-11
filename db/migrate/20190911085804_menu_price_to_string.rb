class MenuPriceToString < ActiveRecord::Migration[6.0]
  def change
    change_column :menus, :price, :string
  end
end
