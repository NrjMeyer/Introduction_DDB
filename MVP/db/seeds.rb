# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    user = User.new(name: Faker::Company.name)
    user.save
end

20.times do
    n = rand(1..10)
    rand_user = User.find(n)
    article = Article.new(name: Faker::Book.unique.title, body: Faker::Book.publisher, description: Faker::Hacker.say_something_smart, user_id: rand_user.id)
    article.save
end

60.times do
    n = rand(1..20)
    rand_article = Article.find(n)
    category = Category.new(name: Faker::Book.genre, article_id: rand_article.id)
    category.save
end

