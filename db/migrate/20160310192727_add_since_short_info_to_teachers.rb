class AddSinceShortInfoToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :since, :integer
    add_column :teachers, :short_info, :string
  end
end
