class CreateFarmFields < ActiveRecord::Migration[6.1]
  def change
    create_table :farm_fields do |t|
      t.string :name

      t.timestamps
    end
  end
end
