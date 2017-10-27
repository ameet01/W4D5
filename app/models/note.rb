class Note < ApplicationRecord
  validates :text, :user_id, :track_id, presence: true

  belongs_to :user

  belongs_to :track
end
