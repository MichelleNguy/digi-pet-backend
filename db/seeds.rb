# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


bob = User.create(username: "Bob", password: "mom", bank: 1000, last_day: 30)
sam = User.create(username: "Sam", password: "mom", bank: 0, last_day: 30)
tim = User.create(username: "Tim", password: "mom", bank: 0, last_day: 29)
kim = User.create(username: "kim", password: "mom", bank: 0, last_day: 30)

image3 = "./monsters/28-monster.png"
image2 = "https://images-na.ssl-images-amazon.com/images/I/51K90EdgxcL._SX425_.jpg"
image = "https://images.blogthings.com/thecutemonstertest/monster-5.png"
pet1 = Pet.create(img_url: image, name: "Blob", hygiene: 50, hunger: 50, attention: 50, user: bob)
pet2 = Pet.create(img_url: image3, name: "Cube", hygiene: 50, hunger: 50, attention: 50, user: bob)
pet3 = Pet.create(img_url: image, name: "Triangle", hygiene: 50, hunger: 50, attention: 50, user: sam)


shop1 = Shop.create(name: "The Fruit Snack Stand")
shop2 = Shop.create(name: "The Vegetable Stand")
shop3 = Shop.create(name: "Couch Hydrant and Yonder")

fruit_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRhaCwuey4j2O0NqQqyr6jwdCLHrC8mDHjY5ghcFMb2384CxaFn"
fruit_image2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTvW9jVf39PPTh_4a6nJkMox6N8yucVu5K5zHiiMqsQw7t_ukzJ"
fruit_image3 = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQCrnbucEAxMX6Mjt-ZsC1SUpsFEPpDzTjoiG_EiByY7JlClzQb"
apple = Item.create(price: 5,img_url: fruit_image2, name: "apple", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
banana = Item.create(price: 5, img_url: fruit_image, name: "banana", effect: '{ "hunger": 6}', category: "fruit", consumable: true, shop: shop1)
durian = Item.create(price: 10,img_url: fruit_image3, name: "durian", effect: '{ "hunger": -5}', category: "fruit", consumable: true, shop: shop1)

pizza = Item.create(name: "pizza", effect: '{ "hunger": 10 }', category: "vegetable", consumable: true, shop: shop2)
tomato = Item.create(name: "tomato", effect: '{ "hunger": 4 }', category: "vegetable", consumable: true, shop: shop2)
broccoli = Item.create(name: "broccoli", effect: '{ "hunger": 20 }', category: "vegetable", consumable: true, shop: shop2)
squash = Item.create(name: "squash", effect: '{ "hunger": 8 }', category: "vegetable", consumable: true, shop: shop2)

ball_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSRhP3t3xHFw5vbqoXu-22w70cvtmhXBcD7Rqk8PGK49XeGBOtW"
ball = Item.create(img_url: ball_image,price: 10, name: "ball", effect: '{ "hygiene": 10, "attention": 5 }', category: "grooming", consumable: false, shop: shop3)
brush = Item.create(price: 10, name: "brush", effect: '{ "hygiene": 10, "attention": 5 }', category: "grooming", consumable: false, shop: shop3)

## user items
UserItem.create(user: bob, item: apple)
UserItem.create(user: bob, item: apple)
UserItem.create(user: bob, item: banana)
UserItem.create(user: bob, item: ball)
UserItem.create(user: bob, item: durian)
UserItem.create(user: tim, item: pizza)



puts "Seed successful"