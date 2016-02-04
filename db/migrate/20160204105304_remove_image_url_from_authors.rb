class RemoveImageUrlFromAuthors < ActiveRecord::Migration
  def change
    remove_column :authors, :image_url, :string
  end
end
