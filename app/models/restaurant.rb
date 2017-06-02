class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end
end
