class CreatePlantings < ActiveRecord::Migration[6.1]
  def change
    create_table :plantings do |t|
      t.references :farm_field, null: false, foreign_key: true
      t.references :crop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
