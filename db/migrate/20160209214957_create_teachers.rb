class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name_uk
      t.string :name_en
      t.string :photo
      t.text :info_uk
      t.text :info_en
      t.string :slug, unique: true

      t.timestamps null: false
    end
  end
end
