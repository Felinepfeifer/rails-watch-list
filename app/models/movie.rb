class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true
  # validates :overview, absence: true
  validates :overview, presence: true
  validates :title, presence: true
end
