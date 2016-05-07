module ApplicationHelper
	def photo_is_empty_side(post)
		unless post.post_photo.blank?
      content_tag :a, cl_image_tag(post.post_photo), class: "image", href: post_path(post)
		end
	end
end
