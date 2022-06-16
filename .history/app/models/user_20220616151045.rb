class User < ApplicationRecord
  validates :username, presence: true, ub length: {minimum: 3, maximum: 25}
  validates :email, presence: true, length: {minimum: 3, maximum: 105}
end