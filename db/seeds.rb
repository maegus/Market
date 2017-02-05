# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: 'i@draveness.me',
  name: 'draveness',
  password: '123456',
  password_confirmation: '123456'
)

Product.create(
  title: 'iPhone',
  price: 560000,
  description: 'A mobile phone produced by Apple inc.',
  image: 'https://support.apple.com/content/dam/edam/applecare/images/en_US/iphone/featured-content-iphone-transfer-content-ios10_2x.png'
)

20.times do |i|
  Product.create(
    title: "Product #{i}",
    price: 560000,
    description: 'A mobile phone produced by Apple inc.',
    image: ''
  )
end
