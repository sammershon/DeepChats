module ApplicationHelper
  def gravatar_for(user, opts = {})
    opts[:alt] = user.name
    image_tag "https://media.creativemornings.com/uploads/user/avatar/6930/small_avatar.jpg",
              opts
  end
end
