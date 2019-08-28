class Dish < ApplicationRecord
  has_and_belongs_to_many :sections
  default_scope { order(sort: :DESC) }
end
