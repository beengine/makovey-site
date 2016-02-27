ActiveAdmin.register Rubric do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name_uk, :name_en, :site

 form do |f|
    f.semantic_errors
    f.inputs do
      input :site, as: :radio, collection: Rubric.sites.keys
      input :name_uk
      input :name_en
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
