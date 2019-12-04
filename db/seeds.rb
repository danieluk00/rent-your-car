# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user=User.create!(email: 'daniellandes@gmail.com', first_name: 'Daniel', last_name: 'Landes', driving_license: 'ABC12345', password: 'abcdef')

Car.destroy_all

Car.create!(engine_type: 'diesel', brand: 'ford', model: '206', price: '20', location: 'london', description: 'Car', user: user)
Car.create!(engine_type: 'petrol', brand: 'beatle', model: 'old', price: '22', location: 'southport', description: 'Car', user: user)
Car.create!(engine_type: 'electric', brand: 'mini', model: 'cooper', price: '19', location: 'barcelona', description: 'Car', user: user)
Car.create!(engine_type: 'petrol', brand: 'ferrari', model: 'old', price: '22', location: 'southport', description: 'Car', user: user)
Car.create!(engine_type: 'electric', brand: 'mazda', model: 'cooper', price: '19', location: 'barcelona', description: 'Car', user: user)
