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
			input :author, collection: grouped_options_for_select(grouped_authors)
			input :rubric, collection: grouped_options_for_select(grouped_rubrics)
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
      Author.all_sites.each do |auth|
        main << [auth.name_uk, auth.id]
        live << [auth.name_uk, auth.id]
      end
      Author.main.each do |auth|
        main << [auth.name_uk, auth.id]
      end
      Author.live.each do |auth|
        live << [auth.name_uk, auth.id]
      end
      @grouped_authors = [['main', main],['live', live]]

      main = []
      live = []
      Rubric.all_sites.each do |rubr|
        main << [rubr.name_uk, rubr.id]
        live << [rubr.name_uk, rubr.id]
      end
      Rubric.main.each do |rubr|
        main << [rubr.name_uk, rubr.id]
      end
      Rubric.live.each do |rubr|
        live << [rubr.name_uk, rubr.id]
      end
      @grouped_rubrics = [['main', main],['live', live]]

      super
    end
    def edit
      main = []
      live = []
      Author.all_sites.each do |auth|
        main << [auth.name_uk, auth.id]
        live << [auth.name_uk, auth.id]
      end
      Author.main.each do |auth|
        main << [auth.name_uk, auth.id]
      end
      Author.live.each do |auth|
        live << [auth.name_uk, auth.id]
      end
      @grouped_authors = [['main', main],['live', live]]

      main = []
      live = []
      Rubric.all_sites.each do |rubr|
        main << [rubr.name_uk, rubr.id]
        live << [rubr.name_uk, rubr.id]
      end
      Rubric.main.each do |rubr|
        main << [rubr.name_uk, rubr.id]
      end
      Rubric.live.each do |rubr|
        live << [rubr.name_uk, rubr.id]
      end
      @grouped_rubrics = [['main', main],['live', live]]

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
