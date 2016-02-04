class AddSlugToRubrics < ActiveRecord::Migration
  def change
  	add_column :rubrics, :slug, :string, unique: true
  end
end
