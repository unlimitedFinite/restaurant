class AddDescriptionToSection < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :description, :string
  end
end
