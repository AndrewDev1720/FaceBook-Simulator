module ApplicationHelper
  def gravatar_for(user, option: {style: "height: 150px"})
    email_address = user.email.downcase
    style = option[:style]
    hash = Digest::MD5.hexdigest(email_address)
    gravatar_url = "https://external-preview.redd.it/4PE-nlL_PdMD5PrFNLnjurHQ1QKPnCvg368LTDnfM-M.png?auto=webp&s=ff4c3fbc1cce1a1856cff36b5d2a40a6d02cc1c3"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block", style: "height: 300px")
  end
end
