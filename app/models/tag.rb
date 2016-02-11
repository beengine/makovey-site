class Tag < ActiveRecord::Base
	has_and_belongs_to_many :posts
	def name
  	"#{name_uk}"
  end
end
