class AddProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer, null: false
    add_column :users, :skype_id, :string, null: false
    add_column :users, :favorite_subject, :string, null: false
    add_column :users, :weak_subject, :string, null: false
    add_column :users, :etc, :text, null: false, default: ""
  end
end
