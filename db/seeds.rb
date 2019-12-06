# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.find_by(email: 'daniel@gmail.com')

if user.nil?
  user = User.create!(email: 'daniel@gmail.com', first_name: 'Daniel', last_name: 'L', driving_license: 'ABC123456', password: 'abcdef')
end

Car.destroy_all
