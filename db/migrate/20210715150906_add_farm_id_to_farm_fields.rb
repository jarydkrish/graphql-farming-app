class AddFarmIdToFarmFields < ActiveRecord::Migration[6.1]
  def change
    add_reference :farm_fields, :farm, null: false, foreign_key: true
  end
end
