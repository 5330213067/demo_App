class Post < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true
  validates :user_id, presence: true
end
