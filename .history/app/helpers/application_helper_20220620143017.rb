module ApplicationHelper
  def gravatar_for(user, options = { size: 200})
    email_address = @user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://images.unsplash.com/photo-1652077859695-de2851a95620?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block", style: "height:400px")
  end
end
