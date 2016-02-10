class Classs < ActiveRecord::Base
	belongs_to :teacher
	has_many :schedules
end
