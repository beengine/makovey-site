class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :rubric
  has_and_belongs_to_many :tags
  mount_uploader :post_photo, PostPhotoUploader
  def name
  	"#{title_uk}"
  end
end
