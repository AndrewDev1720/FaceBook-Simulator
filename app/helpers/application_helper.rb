module ApplicationHelper
  def avatar_for(user, option = {style: "height: 300px"})
    style = option[:style]
    default_avatar_url = "https://external-preview.redd.it/4PE-nlL_PdMD5PrFNLnjurHQ1QKPnCvg368LTDnfM-M.png?auto=webp&s=ff4c3fbc1cce1a1856cff36b5d2a40a6d02cc1c3"
    avatar_url = user.avatar.url
    if avatar_url == nil
     return image_tag(default_avatar_url, alt: user.username, class: "rounded shadow mx-auto d-block", style: style)
    else
      return image_tag(avatar_url, alt: user.username, class: "rounded shadow mx-auto d-block", style: style)
    end
  end


end
