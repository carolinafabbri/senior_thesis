class Place < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :likes, as: :reference
  has_many :images

  # def average_rating
    # ratings.map(&:value).sum / ratings.count
  # end
end
