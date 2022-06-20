module ApplicationHelper
  def gravatar_for(user, options = { size: 200})
    email_address = @user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "w=687&q=80"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block", style: "height: 400px")
  end
end
