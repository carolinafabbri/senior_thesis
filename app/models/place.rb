class Place < ActiveRecord::Base
  has_many :ratings
  has_many :posts

  attribute :name
  attribute :description
  attribute :type
  attribute :location
  attribute :picture

  def average_rating
    ratings.map(&:value).sum / ratings.count
  end
end
