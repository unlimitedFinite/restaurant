class Dish < ApplicationRecord
  has_many :sections
  has_many :menus, through: :sections
end
