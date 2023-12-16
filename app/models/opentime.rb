class Opentime < ApplicationRecord
  has_many :restaurants, through: :stations_restaurants, dependent: :destroy
  delegate_missing_to :restaurants

  has_many :opentimes_restaurants, dependent: :destroy
end
