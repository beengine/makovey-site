class AddSiteToRubric < ActiveRecord::Migration
  def change
    add_column :rubrics, :site, :integer, default: 0
  end
end
