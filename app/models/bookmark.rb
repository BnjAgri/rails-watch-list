class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list, message: "Already in the list" }
  #validates_associated :movie
  #validates_associated :list
end
