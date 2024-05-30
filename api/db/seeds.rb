# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data
Author.destroy_all
Book.destroy_all

# Create authors with books
author1 = Author.create(name: "Author 1")
author2 = Author.create(name: "Author 2")

author1.books.create([
  { title: "Book 1 by Author 1" },
  { title: "Book 2 by Author 1" }
])

author2.books.create([
  { title: "Book 1 by Author 2" },
  { title: "Book 2 by Author 2" },
  { title: "Book 3 by Author 2" }
])