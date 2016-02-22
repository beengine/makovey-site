class Schedule < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :subject
  belongs_to :classs, dependent: :destroy
#  	enum day_of_week: [:monday, :tuesday, :wednesday, :thursday, :friday]
end
