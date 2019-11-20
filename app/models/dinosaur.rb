class Dinosaur < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :bookings
  # validate that dinosaur needs a :name, :species, :age, :gender, :food, :price, :policy, :habits, :location
  # validates :species, presence: true
  # validates :age, presence: true
  # validates :gender, presence: true
  # validates :food, presence: true
  # validates :price, presence: true
  # validates :policy, presence: true
  # validates :habits, presence: true
  # validates :location, presence: true

  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
end
