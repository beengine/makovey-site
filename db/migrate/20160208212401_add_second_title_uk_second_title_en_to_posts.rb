class AddSecondTitleUkSecondTitleEnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :second_title_uk, :string
    add_column :posts, :second_title_en, :string
  end
end
