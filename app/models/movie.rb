class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  # Fields:
  # t.string :title
  # t.text :overview
  # t.string :poster_url
  # t.decimal :rating
end
