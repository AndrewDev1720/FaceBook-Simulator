module ApplicationHelper
  def gravatar_for(user, options = { size: 200})
    email_address = @user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "http://cdn.onlinewebfonts.com/svg/img_258083.png"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block", style: "height:400px")
  end
end
