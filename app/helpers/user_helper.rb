module UserHelper
  def user_picture(user, options={})
    if user.try(:picture).present?
      image_tag user.picture, options.merge(id: 'user_picture')
    else
      image_tag 'no_avatar.png', options
    end
  end
end
