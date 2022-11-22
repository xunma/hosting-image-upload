# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
i = 0
5.times do
  file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
  article = Article.new(title: "NES-#{i}", body: "A great console")
  article.cover_image.attach(io: file, filename: "#{article.title.parameterize}.png", content_type: "image/png")
  article.save
  i += 1
end
