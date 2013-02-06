class Comment < ActiveRecord::Base
  attr_accessible :comment, :user_id, :post_id
  belongs_to :post
  belongs_to :user

  validates :comment, presence: true, length: { maximum: 150 }
  validates :post_id, presence: true
  validates :user_id, presence: true
end
