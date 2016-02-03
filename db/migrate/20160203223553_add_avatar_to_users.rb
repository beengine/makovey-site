class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :authors, :avatar, :string
  end
end
