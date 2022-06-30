class User < ApplicationRecord

  has_many :comments
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name:  :Friendship, foreign_key: :friend_id
  has_many :inverse_friends, through: :inverse_friendships, source: :user

  has_many :friend_requests, foreign_key: :receiver
  has_many :requestors, through: :friend_requests

  has_many :inverse_friend_requests, class_name: :FriendRequest, foreign_key: :requestor 
  has_many :receivers, through: :inverse_friend_requests

  has_secure_password()
  before_save {self.email = email.downcase()}
  has_many :articles, dependent: :destroy
  validates :username, presence: true, uniqueness: {case_sensitive: false} , length: {minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum: 105}, format: {with: VALID_EMAIL_REGEX}

  def getFriends()
    self.friends.concat(self.inverse_friends)
  end
end