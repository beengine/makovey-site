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
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
