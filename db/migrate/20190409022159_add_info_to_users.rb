class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :university, :string, null: false
    add_column :users, :faculty, :string, null: false
    add_column :users, :department, :string, null: false
    add_column :users, :reference_book, :string, null: false, default: ""
  end
end
