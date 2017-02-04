class Dish < ApplicationRecord
  validates_presence_of :name, :description, :price, :ready_time, :portions, :user, presence: true
  belongs_to :user
end
