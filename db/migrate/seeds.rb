puts "seeding..."
product = Product.create(name: 'Omo')

user = User.create(name: 'Belam')

review = Review.create(
  star_rating: 2,
  comment: "good job",
  user_id: user.id,
  product_id: product.id
)

  puts "done seeding"