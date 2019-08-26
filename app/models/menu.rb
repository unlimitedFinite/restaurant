class Menu < ApplicationRecord
  has_and_belongs_to_many :sections
  # accepts_nested_attributes_for :dishes
end
