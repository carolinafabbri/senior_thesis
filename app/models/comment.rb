class Comment < ActiveRecord::Base
  validates :commenter_name, :body, :post_id, presence: true

  belongs_to :post
end
