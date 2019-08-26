class Dish < ApplicationRecord
  has_and_belongs_to_many :sections
  # has_many :menus, through: :sections
end
