class AddCategoryToDishes < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :category, :string
  end
end
