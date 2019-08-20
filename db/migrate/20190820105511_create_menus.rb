class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.timestamps
    end
  end
end
