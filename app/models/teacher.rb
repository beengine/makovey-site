class Teacher < ActiveRecord::Base
	validates :name_en, :name_uk, :info_uk, presence: true
end
