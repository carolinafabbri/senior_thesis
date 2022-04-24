class Tag < ApplicationRecord
  has_many :taggings
  has_many :places, through: :taggings
end
