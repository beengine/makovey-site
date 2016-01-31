class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name_uk
      t.string :name_en
      t.string :email
      t.string :image_url
      t.text :info_uk
      t.text :info_en

      t.timestamps
    end
  end
end
