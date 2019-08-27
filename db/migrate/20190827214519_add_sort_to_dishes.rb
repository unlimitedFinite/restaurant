class AddSortToDishes < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :sort, :integer
  end
end
