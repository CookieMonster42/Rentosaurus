class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dinosaur

  validates :time_start, presence: true
  validates :time_end, presence: true
end
