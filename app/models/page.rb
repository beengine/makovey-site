class Page < ActiveRecord::Base
  validates :title, :body, :slug, presence: true
  extend FriendlyId
  friendly_id :slug, :use => [:slugged, :finders]
end
