class Section < ApplicationRecord
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :dishes
  default_scope { order(id: :ASC) }
end
