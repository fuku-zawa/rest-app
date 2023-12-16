class Station < ApplicationRecord
  has_many :restaurants, through: :stations_restaurants, dependent: :destroy
  delegate_missing_to :restaurants

  has_many :stations_restaurants, dependent: :destroy

end
