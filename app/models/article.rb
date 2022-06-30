class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :likes, as: :likable
  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
  validates(:description, presence: true, length: { minimum: 3, maximum: 1000 })
end
