class Author < ActiveRecord::Base
  has_many :posts
  mount_uploader :avatar, AvatarUploader
  extend FriendlyId
  friendly_id :name_en, :use => [:slugged, :finders]
  def name
  	"#{name_uk}"
  end
end
