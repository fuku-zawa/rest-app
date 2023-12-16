class Restaurant < ApplicationRecord
  # userとの関係
  has_many :users, through: :interestings, dependent: :destroy
  has_many :users, through: :acts, dependent: :destroy
  has_many :interestings, dependent: :destroy
  has_many :acts, dependent: :destroy
  delegate_missing_to :users

  # stationとの関係
  has_many :stations, through: :stations_restaurants, dependent: :destroy
  delegate_missing_to :stations
  # opentimeとの関係
  has_many :opentimes, through: :opentimes_restaurants, dependent: :destroy
  delegate_missing_to :opentimes
  # closedayとの関係
  has_many :closedays, through: :closedays_restaurants, dependent: :destroy
  delegate_missing_to :closedays
  # categoryとの関係
  has_many :categorys, through: :categorys_restaurants, dependent: :destroy
  delegate_missing_to :categorys
  # menuとの関係
  has_many :menus, through: :menus_restaurants, dependent: :destroy
  delegate_missing_to :menus

end
