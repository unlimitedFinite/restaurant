class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.references :menu
      t.string :title
      t.references :dish
      t.timestamps
    end
  end
end
