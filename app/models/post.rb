class Post < ActiveRecord::Base
  validates :title, :body, presence: true
  validates :title, length: {minimum: 5}

  has_many :comments, dependent: :destroy
end
