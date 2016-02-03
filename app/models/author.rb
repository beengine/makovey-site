class Author < ActiveRecord::Base
  has_many :posts
  mount_uploader :avatar, AvatarUploader
  def name
  	"#{name_uk}"
  end
end
