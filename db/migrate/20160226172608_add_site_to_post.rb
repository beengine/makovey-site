class AddSiteToPost < ActiveRecord::Migration
  def change
    add_column :posts, :site, :integer, default: 0
  end
end
