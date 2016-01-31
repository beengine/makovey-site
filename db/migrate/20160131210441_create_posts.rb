class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title_uk
      t.string :title_en
      t.belongs_to :author, index: true
      t.text :body_uk
      t.text :body_en
      t.string :image_url
      t.integer :viewed
      t.belongs_to :rubric, index: true

      t.timestamps
    end
  end
end
