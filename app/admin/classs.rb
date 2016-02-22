ActiveAdmin.register Classs do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name_uk, :name_en, :photo, :teacher_id, :info_uk, :info_en, schedules_attributes: [ :id, :subject_id, :teacher_id, :day_of_week, :lesson ]

  form partial: 'week'

  controller do
    def new
      @classs=Classs.new
      @teachers=Teacher.all
      @subjects=Subject.all
      6.times do |day|
        8.times { |lesson| @classs.schedules.build(lesson: lesson, day_of_week: day) }
      end
    #  super
    end

    def edit
      @teachers=Teacher.all
      @subjects=Subject.all
      super
    end

  end


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
