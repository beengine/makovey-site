class Author < ActiveRecord::Base
  has_many :posts
  mount_uploader :avatar, AvatarUploader
  extend FriendlyId
  friendly_id :name_en, :use => [:slugged, :finders]
  validates :name_uk, :name_en, :email, :info_uk, :avatar, presence: true
  def name
  	"#{name_uk}"
  end
end
