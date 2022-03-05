class Post < ActiveRecord::Base
  validates :title, :body, presence: true

  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :author

  scope :search, ->(search_terms) do
    return nil if search_terms.blank?

    search_terms.split(' ').reduce(self) do |posts_scope, term|
      posts_scope.where('lower(posts.title) LIKE :term OR lower(posts.body) LIKE :term', term: "%#{term.downcase}%")
    end
  end
end
