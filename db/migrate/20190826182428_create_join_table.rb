class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :menus, :sections do |t|
      t.index :menu_id
      t.index :section_id
    end
  end
end
