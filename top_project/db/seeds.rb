# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
20.times do
    article = Article.new(name: Faker::Book.unique.title, body: Faker::Book.publisher, description: Faker::Hacker.say_something_smart, id_user: Faker::Number.between(1, 10))
    article.save
end