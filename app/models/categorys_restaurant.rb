class CategorysRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :category
end
