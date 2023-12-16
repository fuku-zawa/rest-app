class StationsRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :station
end
