class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true
end
