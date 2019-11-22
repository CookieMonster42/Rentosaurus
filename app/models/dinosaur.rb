class Dinosaur < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  mount_uploader :photo, PhotoUploader
end




  # PERMITTED_DINO = ["Tyrannosaurs", "Sauropods", "Ceratopsians", "Raptors", "Titanosaurs", "Stegosaurus", "Euoplocephalus", "Massospondylus", "Hadrosaurs"]
  # validate that dinosaur needs a :name, :species, :age, :gender, :food, :price, :policy, :habits, :location
  # validates :age, presence: true
  # validates :gender, presence: true
  # validates :food, presence: true
  # validates :price, presence: true
  # validates :policy, presence: true
  # validates :habits, presence: true
  # validates :location, presence: true
