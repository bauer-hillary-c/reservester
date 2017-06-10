class Restaurant < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2}
  validates :address, presence: true, length: {minimum: 10}
  validates :phone_number, presence: true, length: {minimum: 10}
  validates :food_type, presence: true, length: {minimum: 2}

  geocoded_by :address
  after_validation :geocode

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :owner
  has_many :reservations

  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end
end
