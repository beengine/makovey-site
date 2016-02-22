class AddInitialsToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :initials, :string
  end
end
