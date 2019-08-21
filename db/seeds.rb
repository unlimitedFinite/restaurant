# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Menu.create(
  title: 'Happy Hour',
  description: 'Available Monday to Friday',
  price: 9.95
)

Menu.create(
  title: 'A la Carte',
  description: 'Available at all times'
)

Dish.create(
  title: 'Buccie di Patate',
  description: 'Potato skins, deep fried and served with chilli dip',
  price: 4.50
)

Dish.create(
  title: 'Prawn Cocktail',
  description: 'Prawns in marie rose sauce',
  price: 5.50
)

Dish.create(
  title: 'Fillet Rossini',
  description: 'Fillet steak cooked in a port and red wine sauce',
  price: 25.50
)

Dish.create(
  title: 'Pollo Stroganoff',
  description: 'Chicken cooked in marsala, mushrooms and cream sauce. Served with rice.',
  price: 15.50
)

