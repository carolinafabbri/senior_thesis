class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments
  has_many :likes, dependent: :destroy

  def username
    return self.email.split('@')[0].capitalize
  end

  def liked?(reference)
    likes.where(reference: reference).any?
  end
end
