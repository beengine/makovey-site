class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :classses do |t|
      t.string :name_uk
      t.string :name_en
      t.string :photo
      t.references :teacher, index: true
      t.text :info_uk
      t.text :info_en
      t.string :slug, unique: true

      t.timestamps null: false
    end
    add_foreign_key :classses, :teachers

    create_table :subjects do |t|
      t.string :name_uk
      t.string :name_en
    end

    create_table :schedules do |t|
      t.references :classs, index: true
      t.references :subject, index: true
      t.references :teacher, index: true
      t.integer :day_of_week
      t.integer :lesson

      t.timestamps null: false
    end
    add_foreign_key :schedules, :teachers
    add_foreign_key :schedules, :classses
    add_foreign_key :schedules, :subjects
  end
end
