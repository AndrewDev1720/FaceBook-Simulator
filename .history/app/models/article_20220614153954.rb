class Article < ApplicationRecord
  validates (:title, presence: true, length: { })
  validates (:description, presence: true)
end
