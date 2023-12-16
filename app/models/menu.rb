class Menu < ApplicationRecord
  has_many :restaurants, through: :stations_restaurants, dependent: :destroy
  delegate_missing_to :restaurants
  has_many :menus_restaurants, dependent: :destroy
end
