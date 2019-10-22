class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lng
      t.integer :price_per_person

      t.timestamps
    end
  end
end
