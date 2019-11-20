class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dinosaur

  validates :name, presence: true, allow_blank: false
end
