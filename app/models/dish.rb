class Dish < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :readytime, presence: true
  validates :portions, presence: true
end
