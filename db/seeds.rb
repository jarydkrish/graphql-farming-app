# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

corn = Crop.find_or_create_by(name: 'Corn')
soybeans = Crop.find_or_create_by(name: 'Soybeans')

crops = [corn, soybeans]

farm_1 = Farm.find_or_create_by(name: 'Farm 1')
farm_2 = Farm.find_or_create_by(name: 'Farm 2')

field_1 = FarmField.find_or_create_by(name: 'Field 1', farm: farm_1)
field_2 = FarmField.find_or_create_by(name: 'Field 2', farm: farm_2)

farm_fields = [field_1, field_2]

crops.each do |crop|
  farm_fields.each do |farm_field|
    Planting.find_or_create_by({ crop: crop, farm_field: farm_field })
  end
end
