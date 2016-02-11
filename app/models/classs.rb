class Classs < ActiveRecord::Base
	belongs_to :teacher
	has_many :schedules
	accepts_nested_attributes_for :schedules, :allow_destroy => true
	def name
  	"#{name_uk}"
  end
end
