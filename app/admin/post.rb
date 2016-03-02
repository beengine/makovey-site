ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title_uk, :title_en, :author_id, :body_uk, :body_en, :rubric_id, :post_photo, :second_title_uk, :second_title_en, :site
	index do
    column :title_uk
    column :author
    column :rubric
    actions
	end
	form do |f|
		f.semantic_errors
		f.inputs do
      input :site, as: :radio, collection: Post.sites.keys
			input :author, collection: grouped_options_for_select(grouped_options)
			input :rubric, as: :radio
			input :post_photo
			input :title_uk
			input :title_en
			input :second_title_uk
			input :second_title_en
			input :body_uk, :as => :ckeditor
			input :body_en, :as => :ckeditor
  	end
  	f.actions
	end

  controller do
    def new
      main = []
      live = []
      mains=Author.all_sites
      Author.all_sites.each do |auth|
        main << auth.name_en
        live << auth.name_en
      end
      Author.main.each do |auth|
        main << auth.name_en
      end
      Author.live.each do |auth|
        live << auth.name_en
      end
      @grouped_options = [['main', main],['live', live]]
      print(@grouped_options)
      @gro = [
 ['North America',
   [['United States','US'],'Canada']],
 ['Europe',
   ['Denmark','Germany','France']]
]
print(@gro)
  #    print(@grouped_options)
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
