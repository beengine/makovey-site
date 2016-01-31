class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name_uk
      t.string :name_en

      t.timestamps
    end
  end
end
