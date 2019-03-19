class AddSentUserToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :sent_user, :string, null: false
  end
end
