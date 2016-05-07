module PostsHelper
  def photo_is_empty(post)
    unless post.post_photo.blank?
    content_tag :a, cl_image_tag(post.post_photo), class: "image featured"
    end
  end
  def snd_title_is_empty(post)
    unless post.second_title_uk.blank?
    content_tag :p, post.second_title_uk
    end
  end
end
