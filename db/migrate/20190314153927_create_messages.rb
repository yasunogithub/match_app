class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true, null: false, default: 0
      t.references :teacher, foreign_key: true, null: false, default: 0
      t.references :room, foreign_key: true, null: false, default: 0
      t.text :content, null: false

      t.timestamps
    end
  end
end
