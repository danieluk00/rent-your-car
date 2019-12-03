# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all

Car.create(engine_type: 'diesel', brand: 'ford', model: '206', price: '20', location: 'london')
Car.create(engine_type: 'petrol', brand: 'beatle', model: 'old', price: '22', location: 'southport')
Car.create(engine_type: 'electric', brand: 'mini', model: 'cooper', price: '19', location: 'barcelona')
