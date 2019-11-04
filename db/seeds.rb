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


Item.create(price: 5,img_url: "/fruits/banana.png", name: "apple", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/apple.png", name: "banana", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 50,img_url: "/fruits/avocado.png", name: "avocado", effect: '{ "hunger": 20 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 10,img_url: "/fruits/blueberries.png", name: "blueberries", effect: '{ "hunger": 9 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/cherry.png", name: "cherry", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/chili.png", name: "chili", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/coconut.png", name: "coconut", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/dragonfruit.png", name: "dragonfruit", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/grapes.png", name: "grapes", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/kiwi.png", name: "kiwi", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/lemon.png", name: "lemon", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/mango.png", name: "mango", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/mangosteen.png", name: "mangosteen", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/melon.png", name: "melon", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/orange.png", name: "orange", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/papaya.png", name: "papaya", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/peach.png", name: "peach", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/pear.png", name: "pear", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/pineapple.png", name: "pineapple", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/pomegrante.png", name: "pomegrante", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/pumpkin.png", name: "pumpkin", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/raspberry.png", name: "raspberry", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/starfruit.png", name: "starfruit", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/strawberry.png", name: "strawberry", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/watermelon.png", name: "watermelon", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)




# banana = Item.create(price: 5, img_url: fruit_image2, name: "banana", effect: '{ "hunger": 6}', category: "fruit", consumable: true, shop: shop1)
# durian = Item.create(price: 10,img_url: fruit_image3, name: "durian", effect: '{ "hunger": -5}', category: "fruit", consumable: true, shop: shop1)


pizza = Item.create(name: "pizza", effect: '{ "hunger": 10 }', category: "vegetable", consumable: true, shop: shop2)
tomato = Item.create(name: "tomato", effect: '{ "hunger": 4 }', category: "vegetable", consumable: true, shop: shop2)
broccoli = Item.create(name: "broccoli", effect: '{ "hunger": 20 }', category: "vegetable", consumable: true, shop: shop2)
squash = Item.create(name: "squash", effect: '{ "hunger": 8 }', category: "vegetable", consumable: true, shop: shop2)

ball_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSRhP3t3xHFw5vbqoXu-22w70cvtmhXBcD7Rqk8PGK49XeGBOtW"
ball = Item.create(img_url: ball_image,price: 10, name: "ball", effect: '{ "hygiene": 10, "attention": 5 }', category: "grooming", consumable: false, shop: shop3)
brush = Item.create(price: 10, name: "brush", effect: '{ "hygiene": 10, "attention": 5 }', category: "grooming", consumable: false, shop: shop3)

## user items
# UserItem.create(user: bob, item: f1)
# UserItem.create(user: bob, item: f1)
# UserItem.create(user: bob, item: f3)
# UserItem.create(user: bob, item: ball)
# UserItem.create(user: bob, item: durian)
# UserItem.create(user: tim, item: pizza)



puts "Seed successful"