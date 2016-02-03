ActiveAdmin.register Author do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name_uk, :name_en, :email, :image_url, :info_uk, :info_en, :avatar
index do
    column :name_uk
    column :email
    column :image_url
    actions
    end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
