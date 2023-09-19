# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
data = [
  { name: 'joe', age: 10, cuteness: 10, softness: 10 },
  { name: 'steve', age: 5, cuteness: 10, softness: 10 },
  { name: 'kit', age: 10, cuteness: 10, softness: 10 },
  { name: 'Sr cat', age: 15, cuteness: 0, softness: 0 },
  { name: 'car', age: 10, cuteness: 10, softness: 10 }
]

Kitten.create(data)
