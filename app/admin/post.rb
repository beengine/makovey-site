ActiveAdmin.register Post do
	menu priority: 1

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title_uk, :title_en, :author_id, :body_uk, :body_en, :image_url, :rubric_id
	index do
    column :title_uk
    column :author
    column :rubric
    actions
	end
	form do |f|
		f.semantic_errors
		f.inputs do
			input :author
			input :rubric
			input :image_url
			input :title_uk
			input :title_en
			input :body_uk, :as => :ckeditor
			input :body_en, :as => :ckeditor
  	end
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
