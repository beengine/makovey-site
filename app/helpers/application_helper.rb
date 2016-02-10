module ApplicationHelper
	def photo_is_empty_side(post)
		unless post.post_photo.blank?
			raw "<a href=#{post_path(post)} class=\"image\">#{image_tag(post.post_photo)}</a>"
		end
	end
end
