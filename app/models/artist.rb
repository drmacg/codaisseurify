class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :biography, presence: true, length: { maximum: 1000 }
  validates :image_url, presence: true

end
