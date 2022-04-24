class Place < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  # def average_rating
    # ratings.map(&:value).sum / ratings.count
  # end
end
