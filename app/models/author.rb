class Author < ActiveRecord::Base
  has_many :posts
  def to_s
  	"#{name_uk}"
  end
end
