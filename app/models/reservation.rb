class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user, optional: true

  scope :for_user, -> (user) { where(user_id: user.id) }
end
