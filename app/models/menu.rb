class Menu < ApplicationRecord
  has_many :sections
  has_many :dishes, through: :sections
  accepts_nested_attributes_for :dishes

end
