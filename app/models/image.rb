class Image < ApplicationRecord
  belongs_to :place

  validates :url, presence: true
end
