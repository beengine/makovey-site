class Rubric < ActiveRecord::Base
	has_many :posts
	extend FriendlyId
  friendly_id :name_en, :use => [:slugged, :finders]
  def name
  	"#{name_uk}"
  end	
end
