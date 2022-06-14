class Article < ApplicationRecord
  validates (:title, presence: true, length: {minimum:  })
  validates (:description, presence: true)
end
