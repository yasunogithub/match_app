class AddProfileToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :age, :integer, null: false
    add_column :teachers, :email, :string, null: false
    add_column :teachers, :skype_id, :string, null: false
    add_column :teachers, :password_digest, :string, null: false
    add_column :teachers, :university, :string, null: false
    add_column :teachers, :subject, :string, null: false
    add_column :teachers, :reference_book, :string, null: false, default: ""
    add_column :teachers, :etc, :text, null: false, default: ""
  end
end
