class User < ApplicationRecord
  validates :username, presence: true, length
end