ActiveAdmin.register Classs do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name_uk, :name_en, :photo, :teacher_id, :info_uk, :info_en

 	form do |f|
 		f.inputs 'Розклад' do
 			f.has_many :schedules, new_record: false do |t|
 				t.input :lesson
 				t.input :teacher_id
 				t.input :day_of_week
 			end
 		end

		f.semantic_errors
		f.inputs 'Про клас'
		f.actions

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
