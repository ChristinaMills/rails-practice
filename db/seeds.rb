# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = Movie.create([
    {
        title: "Titanic", 
        image_url: "https://sample"
    },
    {
        title: "Titanic2", 
        image_url: "https://sample2"
    }
])

reviews = Review.create([
    {
        title: "My Favorie Movie ever!", 
        description: "mostly spoilers",
        score: 5, 
        movie: movies.first
    }
])