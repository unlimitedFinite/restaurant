# Seed file for Restaurant App

p 'Creating user....'
User.create(
  email: 'info@bistroenglaze.co.uk',
  password: 'password1'
)

puts "Creating Main Menu..."

Menu.create(
  title: 'Main Menu',
  description: 'Prix Fixe promotion available Tuesday to Friday evenings',
  price: '2 Courses for £15 (PF Only)'
)

p "Database seeded!"
