class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_presence_of :comment, :movie_id, :list_id
  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id }
end
