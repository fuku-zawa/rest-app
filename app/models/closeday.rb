class Closeday < ApplicationRecord
  has_many :restaurants, through: :stations_restaurants, dependent: :destroy
  delegate_missing_to :restaurants

  has_many :closedays_restaurants, dependent: :destroy
end
