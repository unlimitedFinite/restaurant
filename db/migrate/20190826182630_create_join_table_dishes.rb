class CreateJoinTableDishes < ActiveRecord::Migration[6.0]
  def change
    create_join_table :sections, :dishes do |t|
      t.index :section_id
      t.index :dish_id
    end
  end
end
