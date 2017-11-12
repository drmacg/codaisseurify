class Song < ApplicationRecord
  belongs_to :artist

  validates :track_number, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :duration, presence: true, length: { maximum: 8}

end
