# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.destroy_all

products = (1..20).map do |index|
  Product.create!(
    name: "Philip Patek",
    category: "men",
    product_type: "shoes",
    price: 100,
    inventory: 10,
    color: "black",
    discount: 0.1,
    product_image: "https://images.unsplash.com/photo-1612835362596-4b7b7b0b4b0a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVuJTIwc2hvZXMlMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glMjBzaG9lcyUyMGZvciUyMG1lJTIwY2FyJTIwYmVhY2glM"
  )
end

puts "#{products.size} products created."
