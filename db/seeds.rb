# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Started'
10.times do
  new_article = Article.new(title: Faker::Book.title, content: Faker::Lorem.paragraph(4))
  puts new_article.valid?
  new_article.save

  puts 'Saved a new Article'
end

puts "Ended with #{Article.count} new articles"
