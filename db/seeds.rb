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
shop3 = Shop.create(name: "The Sports Shop")


## the fruit stand
Item.create(price: 1,img_url: "/fruits/banana.png", name: "apple", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 2,img_url: "/fruits/apple.png", name: "banana", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 50,img_url: "/fruits/avocado.png", name: "avocado", effect: '{ "hunger": 20 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/blueberries.png", name: "blueberries", effect: '{ "hunger": 9 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 6,img_url: "/fruits/cherry.png", name: "cherry", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 2,img_url: "/fruits/chili.png", name: "chili", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 7,img_url: "/fruits/coconut.png", name: "coconut", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 10,img_url: "/fruits/dragonfruit.png", name: "dragonfruit", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 2,img_url: "/fruits/grapes.png", name: "grapes", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 2,img_url: "/fruits/kiwi.png", name: "kiwi", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 1,img_url: "/fruits/lemon.png", name: "lemon", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/mango.png", name: "mango", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 8,img_url: "/fruits/mangosteen.png", name: "mangosteen", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 3,img_url: "/fruits/melon.png", name: "melon", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 2,img_url: "/fruits/orange.png", name: "orange", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 7,img_url: "/fruits/papaya.png", name: "papaya", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 3,img_url: "/fruits/peach.png", name: "peach", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 3,img_url: "/fruits/pear.png", name: "pear", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/pineapple.png", name: "pineapple", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/pomegranate.png", name: "pomegranate", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/pumpkin.png", name: "pumpkin", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 5,img_url: "/fruits/raspberry.png", name: "raspberry", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 11,img_url: "/fruits/starfruit.png", name: "starfruit", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 6,img_url: "/fruits/strawberry.png", name: "strawberry", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)
Item.create(price: 7,img_url: "/fruits/watermelon.png", name: "watermelon", effect: '{ "hunger": 5 }', category: "fruit", consumable: true, shop: shop1)

#The veggie stand
Item.create(price: 6,img_url: "/veggies/artichoke.png", name: "artichoke", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 5,img_url: "/veggies/asparagus.png", name: "asparagus", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 3,img_url: "/veggies/broccoli.png", name: "broccoli", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 2,img_url: "/veggies/cabbage.png", name: "cabbage", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 1,img_url: "/veggies/carrot.png", name: "carrot", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 5,img_url: "/veggies/corn.png", name: "corn", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 1,img_url: "/veggies/cucumber.png", name: "cucumber", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 3,img_url: "/veggies/eggplant.png", name: "eggplant", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 1,img_url: "/veggies/garlic.png", name: "garlic", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 1,img_url: "/veggies/ginger.png", name: "ginger", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 1,img_url: "/veggies/horseradish.png", name: "horseradish", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 3,img_url: "/veggies/lettuce.png", name: "lettuce", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 2,img_url: "/veggies/mushroom.png", name: "mushroom", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 2,img_url: "/veggies/olives.png", name: "olives", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 3,img_url: "/veggies/onion.png", name: "onion", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 1,img_url: "/veggies/parsley.png", name: "parsley", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 2,img_url: "/veggies/peanut.png", name: "peanut", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 2,img_url: "/veggies/peas.png", name: "peas", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 2,img_url: "/veggies/pepper.png", name: "pepper", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 3,img_url: "/veggies/potatoes.png", name: "potatoes", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 3,img_url: "/veggies/radishes.png", name: "radishes", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 2,img_url: "/veggies/spring-onion.png", name: "spring-onion", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)
Item.create(price: 3,img_url: "/veggies/tomato.png", name: "tomato", effect: '{ "hunger": 5 }', category: "veggie", consumable: true, shop: shop2)

# the sports shop
Item.create(price: 3,img_url: "/sports/basketball.png", name: "basketball", effect: '{ "attention": 5, "hygiene": -10 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/bowling.png", name: "bowling", effect: '{ "attention": 5, "hygiene": -5 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/football.png", name: "football", effect: '{ "attention": 5, "hygiene": -10 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/golf.png", name: "golf", effect: '{ "attention": 5, "hygiene": -3 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/ice-skating.png", name: "ice skate", effect: '{ "attention": 5, "hygiene": -10 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/ping-pong.png", name: "ping pong", effect: '{ "attention": 20, "hygiene": -20 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/skateboard.png", name: "skateboard", effect: '{ "attention": 5, "hygiene": -10 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/skating.png", name: "rollerskate", effect: '{ "attention": 8, "hygiene": -10 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/stopwatch.png", name: "stopwatch", effect: '{ "attention": 5, "hygiene": -10 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/trophy.png", name: "trophy", effect: '{ "attention": 5 }', category: "sports", consumable: false, shop: shop3)
Item.create(price: 3,img_url: "/sports/whistle.png", name: "whistle", effect: '{ "attention": 5 }', category: "sports", consumable: false, shop: shop3)

# banana = Item.create(price: 5, img_url: fruit_image2, name: "banana", effect: '{ "hunger": 6}', category: "fruit", consumable: true, shop: shop1)
# durian = Item.create(price: 10,img_url: fruit_image3, name: "durian", effect: '{ "hunger": -5}', category: "fruit", consumable: true, shop: shop1)


# pizza = Item.create(name: "pizza", effect: '{ "hunger": 10 }', category: "vegetable", consumable: true, shop: shop2)
# tomato = Item.create(name: "tomato", effect: '{ "hunger": 4 }', category: "vegetable", consumable: true, shop: shop2)
# broccoli = Item.create(name: "broccoli", effect: '{ "hunger": 20 }', category: "vegetable", consumable: true, shop: shop2)
# squash = Item.create(name: "squash", effect: '{ "hunger": 8 }', category: "vegetable", consumable: true, shop: shop2)

# ball_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSRhP3t3xHFw5vbqoXu-22w70cvtmhXBcD7Rqk8PGK49XeGBOtW"
# ball = Item.create(img_url: ball_image,price: 10, name: "ball", effect: '{ "hygiene": 10, "attention": 5 }', category: "grooming", consumable: false, shop: shop3)
# brush = Item.create(price: 10, name: "brush", effect: '{ "hygiene": 10, "attention": 5 }', category: "grooming", consumable: false, shop: shop3)

## user items
# UserItem.create(user: bob, item: f1)
# UserItem.create(user: bob, item: f1)
# UserItem.create(user: bob, item: f3)
# UserItem.create(user: bob, item: ball)
# UserItem.create(user: bob, item: durian)
# UserItem.create(user: tim, item: pizza)



puts "Seed successful"