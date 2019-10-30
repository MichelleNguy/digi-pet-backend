# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


bob = User.create(username: "Bob", password: "mom", bank: 0, last_day: 30)
sam = User.create(username: "Sam", password: "mom", bank: 0, last_day: 30)
tim = User.create(username: "Tim", password: "mom", bank: 0, last_day: 29)
kim = User.create(username: "kim", password: "mom", bank: 0, last_day: 30)

pet1 = Pet.create(name: "Blob", hygiene: 50, hunger: 50, attention: 50, user: bob)
pet2 = Pet.create(name: "Cube", hygiene: 50, hunger: 50, attention: 50, user: bob)
pet3 = Pet.create(name: "Triangle", hygiene: 50, hunger: 50, attention: 50, user: sam)

shop1 = Shop.create(name: "The Fruit Snack Stand")
shop2 = Shop.create(name: "The Vegetable Stand")
shop3 = Shop.create(name: "Couch Hydrant and Yonder")

apple = Item.create(name: "apple", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
banana = Item.create(name: "banana", effect: '{ "hunger": 6}', category: "fruit", consumable: true, shop: shop1)
durian = Item.create(name: "durian", effect: '{ "durian": -5}', category: "fruit", consumable: true, shop: shop1)

pizza = Item.create(name: "pizza", effect: '{ "hunger": 10 }', category: "vegetable", consumable: true, shop: shop2)
tomato = Item.create(name: "tomato", effect: '{ "hunger": 4 }', category: "vegetable", consumable: true, shop: shop2)
broccoli = Item.create(name: "broccoli", effect: '{ "hunger": 20 }', category: "vegetable", consumable: true, shop: shop2)
squash = Item.create(name: "squash", effect: '{ "hunger": 8 }', category: "vegetable", consumable: true, shop: shop2)

ball = Item.create(name: "ball", effect: '{ "hygiene": 10, "attention": 5 }', category: "grooming", consumable: false, shop: shop3)
brush = Item.create(name: "brush", effect: '{ "hygiene": 10, "attention": 5 }', category: "grooming", consumable: false, shop: shop3)

## user items
UserItem.create(user: bob, item: apple)
UserItem.create(user: bob, item: banana)
UserItem.create(user: bob, item: durian)
UserItem.create(user: tim, item: pizza)



puts "Seed successful"