module PostsHelper
	def photo_is_empty(post)
		unless post.post_photo.blank?
			raw "<a href=\"/\" class=\"image featured\">#{image_tag(post.post_photo)}</a>"
		end
	end
	def snd_title_is_empty(post)
		unless post.second_title_uk.blank?
			raw "<p>#{post.second_title_uk}</p>"
		end
	end
end
