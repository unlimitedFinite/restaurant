# Seed file for Restaurant App

p 'Creating user....'
User.create(
  email: 'info@bistroenglaze.co.uk',
  password: 'password1'
)

p "Creating Sample Menu..."

menu = Menu.create(
  title: 'Sample',
  description: 'Available Monday to Friday',
  price: '£10 for 3 courses'
)

starters = Section.create(
  title: 'Starters'
)

mains = Section.create(
  title: 'Main Course'
)

menu.sections << starters
menu.sections << mains
menu.save

p "Database seeded!"
