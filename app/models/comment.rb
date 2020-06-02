class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :theme
  has_many :likes

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  validates :text, presence: true
end
