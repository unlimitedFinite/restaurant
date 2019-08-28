class Dish < ApplicationRecord
  has_and_belongs_to_many :sections
  default_scope { order(sort: :ASC) }

  def fix_sorting(section)
    sd = section.dishes
    ind = 0
    sd.each_with_index do |d, index|
      if id == d.id
        ind = index
      end
    end
    sd.each_with_index do |d, index|
      if index > ind
        sd[index].sort -= 1
        sd[index].save
      end
    end
  end
end
