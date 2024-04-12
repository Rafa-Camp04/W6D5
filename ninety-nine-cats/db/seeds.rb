# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Cat.destroy_all # can exist on its own

ActiveRecord::Base.connection.reset_pk_sequence!('cats')

# Users
cat1 = Cat.create!(
  birth_date: '01/01/2020', 
  color: 'orange',
  name: 'Fluffy', 
  sex: 'F',
  description: 'obese'
)
cat2 = Cat.create!(
  birth_date: '02/02/2021', 
  color: 'black',
  name: 'NoIdea', 
  sex: 'M',
  description: 'Hungry'
)
cat3 = Cat.create!(
  birth_date: '03/03/2002', 
  color: 'white',
  name: 'Sally', 
  sex: 'F',
  description: 'Lonely'
)
cat4 = Cat.create!(
  birth_date: '23/04/2000', 
  color: 'beige',
  name: 'Poland', 
  sex: 'M',
  description: 'Old'
)
