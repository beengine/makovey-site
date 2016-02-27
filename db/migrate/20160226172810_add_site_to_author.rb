class AddSiteToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :site, :integer, default: 0
  end
end
