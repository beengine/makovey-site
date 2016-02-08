class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :rubric
  has_and_belongs_to_many :tags
  mount_uploader :post_photo, PostPhotoUploader
  validates :title_en, :title_uk, :author_id, :rubric_id, :body_uk, presence: true
  is_impressionable
  extend FriendlyId
  friendly_id :title_en, :use => [:slugged, :finders]
  def name
  	"#{title_uk}"
  end
end
