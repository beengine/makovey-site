class Subject < ActiveRecord::Base
	has_many :schedules
	def name
  	"#{name_uk}"
  end
end
