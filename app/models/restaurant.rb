class Restaurant < ApplicationRecord
  belongs_to :cuisine

  validates :name, presence: true
  validates :customer_rating, presence: true
  validates :distance, presence: true
  validates :price, presence: true
  validates :cuisine, presence: true
end
