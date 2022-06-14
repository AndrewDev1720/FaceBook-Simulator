class Article < ApplicationRecord
  validates (:title, presence: true, length: {minimum: 6, maximum: 6 })
  validates (:description, presence: true)
end
