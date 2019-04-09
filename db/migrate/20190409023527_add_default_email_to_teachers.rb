class AddDefaultEmailToTeachers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :teachers, :email, ""
  end
end
