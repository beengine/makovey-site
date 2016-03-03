class Rubric < ActiveRecord::Base
	has_many :posts
	extend FriendlyId
  friendly_id :name_en, :use => [:slugged, :finders]
  validates :name_uk, :name_en, presence: true
  enum site: [:all_sites, :main, :live]
  def name
  	"#{name_uk}"
  end	
end
