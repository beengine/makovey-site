ActiveAdmin.register Author do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name_uk, :name_en, :email, :info_uk, :info_en, :avatar
	index do
    column :name_uk
    column :email
    column :avatar
    actions
  end

  form do |f|
  	f.semantic_errors
  	f.inputs do
  		input :name_uk
  		input :name_en
 		 	input :email
  		input :info_uk, :as => :ckeditor
  		input :info_en, :as => :ckeditor
  		input :avatar
  	end
  	f.actions
	end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
