class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }

  # Fields:
  # t.string :comment
  # t.references :movie, null: false, foreign_key: true
  # t.references :list, null: false, foreign_key: true
end
