class RemovePasswordDigestToTeachers < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :password_digest, :string
  end
end
