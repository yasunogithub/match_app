class AddInfoToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :faculty, :string, null: false
    add_column :teachers, :department, :string, null: false
    add_column :teachers, :grade, :integer, null: false
    add_column :teachers, :introduction, :text, null: false
  end
end
