class Track < ApplicationRecord
  validates :title, :ord, :bonus, presence: true

  belongs_to :album

  has_many :notes
end
