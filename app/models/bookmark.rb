class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }
  validates :list, presence: true
  validates :movie, presence: true
end
