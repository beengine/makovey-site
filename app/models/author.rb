class Author < ActiveRecord::Base
  has_many :posts
  def name
  	"#{name_uk}"
  end
end
