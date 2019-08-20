class AddReferenceToDish < ActiveRecord::Migration[6.0]
  def change
    add_reference :dishes, :section, foreign_key: true
  end
end
