# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: 'Awesome Tshirt',
  colors: ['red', 'blue', 'orange', 'black'],
  price_in_cents: 2000,
  stock: 50,
  sizes: ['xs', 's', 'm', 'l', 'xl', 'xxl', '3xl', '4xl'],
)
