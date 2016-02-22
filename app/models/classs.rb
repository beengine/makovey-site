class Classs < ActiveRecord::Base
	belongs_to :teacher
	has_many :schedules
  accepts_nested_attributes_for :schedules #, reject_if: lambda {|attributes| attributes['subject_id'].blank?}
  mount_uploader :photo, PostPhotoUploader
  extend FriendlyId
  friendly_id :name_en, :use => [:slugged, :finders]
	def name
  	"#{name_uk}"
  end
end
