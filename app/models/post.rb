class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :rubric
  has_and_belongs_to_many :tags
  def to_s
  	"#{title_uk}"
  end
end
