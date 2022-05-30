# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded witaddressh the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
rodrigo = User.create(full_name: "Rodrigo", address: "Rua Antonio, 125", contact: "1198980909")
tenis = Sneaker.create(user_id: "1", size: "40", model: "run", brand: "nike", condition: "new", price: "500", inventory: "1", description: "very nice")
order = Order.create(sneaker_id: "2", user_id: "3")

gabriel = User.create(full_name: "Gabriel", address: "Rua moema, 900", contact: "1198989809")
tenis = Sneaker.create(user_id: "4", size: "39", model: "z300", brand: "rebook", condition: "new", price: "600", inventory: "1", description: "I loved")
order = Order.create(sneaker_id: "5", user_id: "6")

renan = User.create(full_name: "Renan", address: "Rua Cerro Corá, 89", contact: "1245567890")
tenis = Sneaker.create(user_id: "6", size: "43", model: "n9000", brand: "newbalace", condition: "new", price: "900", inventory: "1", description: "very good")
order = Order.create(sneaker_id: "7", user_id: "8")

guilherme = User.create(full_name: "Guilherme", address: "Rua Oliveira, 80", contact: "1199999809")
tenis = Sneaker.create(user_id: "9", size: "41", model: "profecy", brand: "mizuno", condition: "new", price: "900", inventory: "1", description: "good")
order = Order.create(sneaker_id: "10", user_id: "11")