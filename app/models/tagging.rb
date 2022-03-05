class Tagging < ActiveRecord::Base
  validates_uniqueness_of :post_id, scope: [:tag_id]

  belongs_to :post
  belongs_to :tag
end
