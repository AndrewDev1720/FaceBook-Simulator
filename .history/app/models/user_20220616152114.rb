class User < ApplicationRecord
  validates :username, presence: true, uniqueness: {case_sensitive: false} , length: {minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX = 
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum: 105}
end