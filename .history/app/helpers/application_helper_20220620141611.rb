module ApplicationHelper
  def gravatar_for(users, options = { size: 200})
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?=#{size}"
  end
end
