class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :restaurants, through: :interestings, dependent: :destroy
  has_many :restaurants, through: :acts, dependent: :destroy
  has_many :interestings, dependent: :destroy
  has_many :acts, dependent: :destroy

  delegate_missing_to :restaurants
end
