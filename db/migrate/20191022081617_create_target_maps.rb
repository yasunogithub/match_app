class CreateTargetMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :target_maps do |t|
      t.references :ship, foreign_key: true
      t.references :target, foreign_key: true

      t.timestamps
    end
  end
end
