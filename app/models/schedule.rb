class Schedule < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :subject
  belongs_to :classs
  	enum day_of_week: [:monday, :tuesday, :wednesday, :thursday, :friday]
end
