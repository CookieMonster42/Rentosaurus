class Dinosaur < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  # validate that dinosaur needs a :name, :species, :age, :gender, :food, :price, :policy, :habits, :location
  validates :name, presence: true
  # validates :species, presence: true
  # validates :age, presence: true
  # validates :gender, presence: true
  # validates :food, presence: true
  # validates :price, presence: true
  # validates :policy, presence: true
  # validates :habits, presence: true
  # validates :location, presence: true
end
