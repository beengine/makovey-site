class Teacher < ActiveRecord::Base
	validates :name_en, :name_uk, :info_uk, presence: true
	has_many :schedules
	has_one :classs
  mount_uploader :photo, PostPhotoUploader
	extend FriendlyId
  friendly_id :name_en, :use => [:slugged, :finders]
  def name
  	"#{name_uk}"
  end
end
